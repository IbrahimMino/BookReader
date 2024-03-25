import 'package:books/features/data/model/book_model.dart';
import 'package:books/features/domain/entity/book_entity.dart';
import 'package:books/features/domain/entity/image_links_entity.dart';
import 'package:books/features/domain/entity/item_entity.dart';
import 'package:books/features/domain/entity/sales_info_entity.dart';
import 'package:books/features/domain/entity/search_info_entity.dart';
import 'package:books/features/domain/entity/volumeI_info_entity.dart';

class BookMapper {
  BookEntity toEntity(BookModel? bookModel) {
    return BookEntity(
      kind: bookModel?.kind,
      totalItems: bookModel?.totalItems,
      items: toItemEntity(bookModel?.items ?? []),
    );
  }

  List<ItemEntity>? toItemEntity(List<Item>? items) {
    List<ItemEntity>? list = [];
    if (items != null && items.isNotEmpty) {
      for (int i = 0; i < items.length; i++) {
        list.add(
          ItemEntity(
              kind: items[i].kind,
              id: items[i].id,
              etag: items[i].etag,
              selfLink: items[i].selfLink,
              volumeInfo: toVolumeEntity(items[i].volumeInfo),
              searchInfo: toSearchInfoEntity(items[i].searchInfo),
              salesInfo: toSalesInfoEntity(items[i].saleInfo)),
        );
      }
    }
    return list;
  }

  ItemEntity? toItem(Item? items) {
    ItemEntity itemEntity = ItemEntity();
    if (items != null) {
      itemEntity = ItemEntity(
          kind: items.kind,
          id: items.id,
          etag: items.etag,
          selfLink: items.selfLink,
          volumeInfo: toVolumeEntity(items.volumeInfo),
          searchInfo: toSearchInfoEntity(items.searchInfo));
    }
    return itemEntity;
  }

  VolumeInfoEntity toVolumeEntity(VolumeInfo? volumeInfo) {
    return VolumeInfoEntity(
        title: volumeInfo?.title,
        authors: volumeInfo?.authors,
        publisherDate: volumeInfo?.publishedDate,
        description: volumeInfo?.description,
        printType: volumeInfo?.printType,
        maturityRating: volumeInfo?.maturityRating,
        allowAnonLogging: volumeInfo?.allowAnonLogging,
        contentVersion: volumeInfo?.contentVersion,
        imageLinks: toImageLinksToEntity(volumeInfo?.imageLinks),
        language: volumeInfo?.language,
        previewLink: volumeInfo?.previewLink,
        infoLink: volumeInfo?.infoLink,
        canonicalVolumeLink: volumeInfo?.canonicalVolumeLink,
        pageCount: volumeInfo?.pageCount);
  }

  ImageLinksEntity toImageLinksToEntity(ImageLinks? imageLinks) {
    return ImageLinksEntity(
        smallThumbnail: imageLinks?.smallThumbnail,
        thumbnail: imageLinks?.thumbnail);
  }

  SearchInfoEntity toSearchInfoEntity(SearchInfo? searchInfo) {
    return SearchInfoEntity(
      textSnippet: searchInfo?.textSnippet,
    );
  }

  SalesInfoEntity toSalesInfoEntity(SaleInfo? saleInfo) {
    return SalesInfoEntity(
        country: saleInfo?.country,
        saleability: saleInfo?.saleability,
        isEbook: saleInfo?.isEbook,
        buyLink: saleInfo?.buyLink);
  }
}
