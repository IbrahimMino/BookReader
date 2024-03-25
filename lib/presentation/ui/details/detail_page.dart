import 'dart:io';

import 'package:books/features/domain/database/ebook_database.dart';
import 'package:books/features/domain/entity/book_entity.dart';
import 'package:books/features/domain/entity/gutenberg/result_entity.dart';
import 'package:books/features/domain/entity/item_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/resource/app_colors.dart';
import '../../../core/resource/app_values.dart';
import '../../../utils/pages.dart';
import '../webview/my_webview.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;

    final args = ModalRoute.of(context)!.settings.arguments
        as Map<String, ResultEntity?>;
    final item = args['item']!;

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
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Hero(
                            //   tag: 'location-img-${item.id}',
                            //   child: ClipRRect(
                            //     borderRadius:
                            //         BorderRadius.circular(AppPadding.p12),
                            //     child: SizedBox(
                            //       width: size.width * 0.4,
                            //       height: size.height * 0.24,
                            //       child:
                            //       CachedNetworkImage(
                            //         fit: BoxFit.cover,
                            //         imageUrl:
                            //             'https://www.google.com/imgres?imgurl=https%3A%2F%2Fmhl.org%2Fsites%2Fdefault%2Ffiles%2Fimages%2Fmisc%2Fbookpile3.png&tbnid=SYM4GP4KxY1LHM&vet=12ahUKEwiy_-PSi4-FAxUePhAIHb0ZDLYQMyg8egUIARDMAQ..i&imgrefurl=https%3A%2F%2Fmhl.org%2Fbookclubs&docid=1Ud_RZ9HljyieM&w=485&h=800&q=book&ved=2ahUKEwiy_-PSi4-FAxUePhAIHb0ZDLYQMyg8egUIARDMAQ',
                            //         placeholder: (context, url) =>
                            //             const CupertinoActivityIndicator(),
                            //         errorWidget: (context, url, error) =>
                            //             const Icon(
                            //           Icons.menu_book,
                            //           color: Colors.white,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Column(
                              children: [
                                SizedBox(
                                  width: (size.width * 0.5),
                                  child: Card(
                                    color: AppColors.colorBackground,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.white, width: 1),
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s6),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.all(AppPadding.p12),
                                      child: Text(
                                        '${item.title}',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: (size.width * 0.5) / 2,
                                      child: Card(
                                        color: AppColors.colorBackground,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(AppSize.s6),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.all(AppPadding.p12),
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            '${1996} Year',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: (size.width * 0.5) / 2,
                                      child: Card(
                                        color: AppColors.colorBackground,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(AppSize.s6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                              AppPadding.p12),
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            '${item.id} Page',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: (size.width * 0.5),
                                  child: Card(
                                    color: AppColors.colorBackground,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.white, width: 1),
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s6),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.all(AppPadding.p12),
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        '${item.authors}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: AppSize.s10),
                        SizedBox(
                          width: double.infinity,
                          child: Card(
                            color: AppColors.colorBackground,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(AppSize.s6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(AppPadding.p12),
                              child: Text(
                                '${item.subjects}\n${item.bookshelves.toString()}' ??
                                    'No Description',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: AppSize.s4),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        // Navigator.pushNamed(context, Pages.REVIEW);

                        context.read<EBookDatabase>().addResult(item);

                        // downloadFile();
                        // showWebViewBottomSheetDialog(
                        //     context, '${item.volumeInfo?.previewLink}');

                        // /storage/emulated/0/Download/84.images

                        /*
                        FileDownloader.downloadFile(
                            url: 'https://www.gutenberg.org/ebooks/84.epub3.images',
                            onProgress: (name, progress) {
                              setState(() {
                                // _progress = progress;
                              });
                            },
                            onDownloadCompleted: (value) {
                              if (kDebugMode) {
                                print('path $value');
                              }
                              setState(() {
                                // widget.dbHelper.insertAudioBook(
                                //     widget.item, value);
                                // _progress = null;

                                // context
                                //     .read<AudioBookBloc>()
                                //     .add(LoaderAudioBook());
                                // context
                                //     .read<AudioBookBloc>()
                                //     .stream
                                //     .firstWhere(
                                //       (state) => state
                                //   is! AudioBookLoading,
                                // );
                              });
                            },
                            notificationType: NotificationType.all); */
                      });
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void downloadFile() async {
    try {
      final String fileUrl = 'https://www.gutenberg.org/ebooks/84.epub3.images';

      var dio = Dio();
      Response response = await dio.get(fileUrl,
          options: Options(responseType: ResponseType.bytes));
      final String fileName = fileUrl.substring(fileUrl.lastIndexOf('/') + 1);
      final String path = (await getApplicationDocumentsDirectory()).path;

      String savePath;
      if (Platform.isIOS) {
        final directory = await getApplicationDocumentsDirectory();
        savePath = '${directory.path}/';
      } else if (Platform.isAndroid) {
        savePath = '/storage/emulated/0/Download/';
      } else {
        // Handle other platforms if necessary
        return;
      }

      final File file = File('$savePath/2.epub');
      print('path $savePath/2.epub');
      await file.writeAsBytes(response.data);
      print('Fayl yuklandi: ${file.path}');
    } catch (e) {
      print('Fayl yuklashda xatolik: $e');
    }
  }
}
