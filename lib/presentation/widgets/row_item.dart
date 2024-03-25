import 'package:books/core/resource/app_values.dart';
import 'package:books/features/domain/entity/item_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/resource/app_colors.dart';
import '../../utils/pages.dart';
import '../ui/webview/my_webview.dart';

class RowItem extends StatefulWidget {
  final ItemEntity? item;

  const RowItem(this.item, {super.key});

  @override
  State<RowItem> createState() => _RowItemState();
}

class _RowItemState extends State<RowItem> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;

    return Container(
      color: AppColors.colorBackground,
      height: size.height * 0.23,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag:
                  'location-img-${widget.item?.volumeInfo?.imageLinks?.thumbnail}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s12),
                child: SizedBox(
                  width: size.width * 0.33,
                  height: size.height * 0.20,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        '${widget.item?.volumeInfo?.imageLinks?.thumbnail}',
                    placeholder: (context, url) =>
                        const CupertinoActivityIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.s10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.item?.volumeInfo?.title}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.s18,
                    ),
                    maxLines: 2,
                  ),
                  Text(
                    'Authors: ${widget.item?.volumeInfo?.authors ?? 'No Name'}',
                    style: const TextStyle(
                        fontSize: AppSize.s14, color: Colors.white),
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                  RatingBar.builder(
                    unratedColor: Colors.white,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: AppSize.s24,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, Pages.WEBVIEW,
                                arguments: {
                                  "url":
                                      '${widget.item?.salesInfo?.buyLink.toString()}'
                                });
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.s6),
                          ),
                          backgroundColor: AppColors.colorButton,
                        ),
                        child: const Text(
                          'Buy',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: AppSize.s4),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.s6),
                          ),
                          backgroundColor: AppColors.colorButton,
                        ),
                        child: const Text(
                          'About',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
