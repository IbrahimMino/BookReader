import 'dart:io';

import 'package:books/features/data/mapper/gutenberg/e_book_mapper.dart';
import 'package:books/features/domain/database/ebook_database.dart';
import 'package:books/features/domain/entity/gutenberg/e_book_entity.dart';
import 'package:books/features/domain/entity/gutenberg/result_entity.dart';
import 'package:books/presentation/widgets/detail_body.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vocsy_epub_viewer/epub_viewer.dart';

import '../../../core/resource/app_colors.dart';
import '../../../core/resource/app_values.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with WidgetsBindingObserver {
  bool loading = false;
  Dio dio = Dio();
  ResultEntity? resultEntity;
  String? filePath;

  Future<void> getLocalBook(int? remoteId, BuildContext context) async {
    final eBookDatabase = context.watch<EBookDatabase>();
    eBookDatabase.fetchResultOne(remoteId);
    resultEntity = eBookDatabase.currentResultEntity;
    filePath = resultEntity?.localPath ?? '';
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    final args = ModalRoute.of(context)!.settings.arguments
        as Map<String, ResultEntity?>;
    ResultEntity? item = args['item']!;

    getLocalBook(item.remoteId, context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Detail',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.colorAppBar,
        ),
        body: Container(
          width: double.infinity,
          color: AppColors.colorBackground,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
                AppPadding.p8, AppPadding.p16, AppPadding.p8, AppPadding.p16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailBody(item, size),
                Container(
                  child: loading
                      ? const Center(
                          child: CupertinoActivityIndicator(
                            color: Colors.white,
                          ),
                        )
                      : Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: AppSize.s4),
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              if (filePath != null && filePath!.isNotEmpty) {
                                print('FilePath is not null -> ${filePath}');
                                setState(() {
                                  openView(item);
                                });
                              } else {
                                print('FilePath is null -> ${filePath}');
                                download(item);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(AppSize.s6),
                              ),
                              backgroundColor: AppColors.colorButton,
                            ),
                            icon: const Icon(
                              Icons.menu_book_outlined,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Read the book',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  download(ResultEntity? item) async {
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
        await startDownload(item);
      } else {
        if (await Permission.storage.isGranted) {
          await Permission.storage.request();
          await startDownload(item);
        } else {
          await startDownload(item);
        }
      }
    } else {
      loading = false;
    }
  }

  startDownload(ResultEntity? item) async {
    Directory? appDocDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    String path = '${appDocDir!.path}/${item?.remoteId}.epub';
    File file = File(path);

    if (!File(path).existsSync()) {
      await file.create();
      await dio.download(
        '${item?.formatsEntity?.applicationEpubZip}',
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
          if (item != null) {
            item.localPath = filePath;
            openView(item);

            context.read<EBookDatabase>().addResult(item);
            print('Saved');
          }
        });
      });
    } else {
      setState(() {
        loading = false;
        filePath = path;
      });
    }
  }

  openView(ResultEntity? item) async {
    if (filePath != null && filePath!.isNotEmpty) {
      VocsyEpub.setConfig(
        themeColor: AppColors.colorAppBar,
        identifier: "iosBook",
        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
        allowSharing: true,
        enableTts: true,
        nightMode: true,
      );

      VocsyEpub.locatorStream.listen(
        (locator) {
          print('LOCATOR ->: ${locator}');

          context
              .read<EBookDatabase>()
              .updateResultLastPage(item?.remoteId, locator.toString());
        },
      );

      VocsyEpub.open(
        filePath!,
        lastLocation: EpubLocator.fromJson(
                EBookMapper().parseLastPage(resultEntity?.lastPage)),
      );
      VocsyEpub.closeReader();
    }
  }
}
