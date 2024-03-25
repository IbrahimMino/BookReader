import 'package:books/features/domain/entity/sales_info_entity.dart';
import 'package:books/features/domain/entity/search_info_entity.dart';
import 'package:books/features/domain/entity/volumeI_info_entity.dart';


class ItemEntity {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfoEntity? volumeInfo;
  final SearchInfoEntity? searchInfo;
  final SalesInfoEntity? salesInfo;

  ItemEntity({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.searchInfo,
    this.salesInfo
  });

  ItemEntity copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfoEntity? volumeInfo,
    SearchInfoEntity? searchInfo,
    SalesInfoEntity? salesInfo
  }) =>
      ItemEntity(
        kind: kind ?? this.kind,
        id: id ?? this.id,
        etag: etag ?? this.etag,
        selfLink: selfLink ?? this.selfLink,
        volumeInfo: volumeInfo ?? this.volumeInfo,
        searchInfo: searchInfo ?? this.searchInfo,
        salesInfo: salesInfo ?? this.salesInfo
      );
}