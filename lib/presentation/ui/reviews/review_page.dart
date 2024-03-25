import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vocsy_epub_viewer/epub_viewer.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> with WidgetsBindingObserver {
  final String epubLocalFilePath = '/storage/emulated/0/Download/2.epub';
  final String epubFilePath =
      'https://www.gutenberg.org/ebooks/1342.epub3.images';

  bool loading = false;
  Dio dio = Dio();
  String filePath = "";

  download() async {
    if (Platform.isAndroid || Platform.isIOS) {
      String? firstPart;
      final deviceInfoPlugin = DeviceInfoPlugin();
      final deviceInfo = await deviceInfoPlugin.deviceInfo;
      final allInfo = deviceInfo.data;
      if (allInfo['version']["release"].toString().contains(".")) {
        int indexOfFirstDot = allInfo['version']["release"].indexOf(".");
        firstPart = allInfo['version']["release"].substring(0, indexOfFirstDot);
      } else {
        firstPart = allInfo['version']["release"];
      }
      int intValue = int.parse(firstPart!);
      if (intValue >= 13) {
        await startDownload();
      } else {
        if (await Permission.storage.isGranted) {
          await Permission.storage.request();
          await startDownload();
        } else {
          await startDownload();
        }
      }
    } else {
      loading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EBook'),
      ),
      body: Center(
        child: loading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  Text('Downloading.... E-pub'),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      print("=====filePath======$filePath");
                      if (filePath == "") {
                        download();
                      } else {
                        VocsyEpub.setConfig(
                          themeColor: Theme.of(context).primaryColor,
                          identifier: "iosBook",
                          scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
                          allowSharing: true,
                          enableTts: true,
                          nightMode: true,
                        );

                        // get current locator
                        VocsyEpub.locatorStream.listen((locator) {
                          print('LOCATOR: $locator');
                        });

                        VocsyEpub.open(
                          filePath,
                          lastLocation: EpubLocator.fromJson(
                            {
                              "bookId": "2239",
                              "href": "/OEBPS/ch06.xhtml",
                              "created": 1539934158390,
                              "locations": {
                                "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
                              }
                            },
                          ),
                        );
                      }
                    },
                    child: Text('Open Online E-pub'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      VocsyEpub.setConfig(
                        themeColor: Theme.of(context).primaryColor,
                        identifier: "iosBook",
                        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
                        allowSharing: true,
                        enableTts: true,
                        nightMode: true,
                      );
                      // get current locator
                      VocsyEpub.locatorStream.listen((locator) {
                        // print('LOCATOR: $locator');
                        // print('Current CFI: ${locator.location}');
                        EpubLocator epubLocator =
                            EpubLocator.fromJson(jsonDecode(locator));
                        print('LOCATOR: ${epubLocator.bookId}');
                      });

                      EpubLocator b = EpubLocator.fromJson({
                        "bookId": "http://www.gutenberg.org/84",
                        "href": "/OEBPS/1228567360564846044_84-h-5.htm.xhtml",
                        "created": 1711366136783,
                        "locations": {
                          "cfi": "epubcfi(/0!/4/2[pgepubid00006]/38)"
                        }
                      });
                      VocsyEpub.open(
                        epubLocalFilePath,
                        lastLocation: b,
                      );
                    },
                    child: Text('Open Local E-pub'),
                  ),
                ],
              ),
      ),
    );
  }

  startDownload() async {
    Directory? appDocDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    String path = appDocDir!.path + '/sample.epub';
    File file = File(path);

    if (!File(path).existsSync()) {
      await file.create();
      await dio.download(
        "https://vocsyinfotech.in/envato/cc/flutter_ebook/uploads/22566_The-Racketeer---John-Grisham.epub",
        path,
        deleteOnError: true,
        onReceiveProgress: (receivedBytes, totalBytes) {
          setState(() {
            loading = true;
          });
        },
      ).whenComplete(() {
        setState(() {
          loading = false;
          filePath = path;
        });
      });
    } else {
      setState(() {
        loading = false;
        filePath = path;
      });
    }
  }

  Future<void> _loadEpubFile() async {
    String filePath = 'storage/emulated/0/Download/2.epub';
    if (await File(filePath).exists()) {
      setState(() {});
      print('File found.');
    } else {
      print('File not found.');
    }
  }
}
