import 'package:books/features/domain/entity/sales_info_entity.dart';

import 'item_entity.dart';

class BookEntity {
  final String? kind;
  final int? totalItems;
  final List<ItemEntity>? items;

  BookEntity({
    this.kind,
    this.totalItems,
    this.items,
  });

  BookEntity copyWith({
    String? kind,
    int? totalItems,
    List<ItemEntity>? items,
  }) =>
      BookEntity(
        kind: kind ?? this.kind,
        totalItems: totalItems ?? this.totalItems,
        items: items ?? this.items,
      );
}