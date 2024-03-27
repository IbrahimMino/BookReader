import 'package:books/features/domain/entity/gutenberg/result_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/resource/app_colors.dart';
import '../../core/resource/app_values.dart';

class DetailBody extends StatelessWidget {
  ResultEntity item;
  var size;

  DetailBody(this.item, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hero(
                  tag: 'location-img-${item.remoteId}',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppPadding.p12),
                    child: SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.24,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: '${item.formatsEntity?.imageJpeg}',
                        placeholder: (context, url) =>
                            const CupertinoActivityIndicator(),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.menu_book,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: (size.width * 0.5),
                      child: Card(
                        color: AppColors.colorBackground,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(AppSize.s6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p12),
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
                              borderRadius: BorderRadius.circular(AppSize.s6),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(AppPadding.p12),
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
                              borderRadius: BorderRadius.circular(AppSize.s6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(AppPadding.p12),
                              child: Text(
                                textAlign: TextAlign.center,
                                '${item.remoteId} Page',
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
                          side: const BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(AppSize.s6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p12),
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
                  side: const BorderSide(color: Colors.white, width: 1),
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
    );
  }
}
