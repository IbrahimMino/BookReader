import 'dart:ffi';

import 'package:books/features/domain/model/format_model.dart';
import 'package:isar/isar.dart';

part 'result_model.g.dart';

@Collection()
class ResultModel {
  Id id = Isar.autoIncrement;
  late int? remoteId;
  late String? title;
  late String? authors;
  late String? subjects;
  late String? bookshelves;
  late String? languages;
  late bool? copyright;
  late String? mediaType;
  late int? downloadCount;
  late String? lastPage;
  late String? localPath;
  late String? localImgPath;

  ResultModel({
    required this.remoteId,
    required this.title,
    required this.authors,
    required this.subjects,
    required this.bookshelves,
    required this.languages,
    required this.copyright,
    required this.mediaType,
    required this.downloadCount,
    required this.lastPage,
    required this.localPath,
    required this.localImgPath,
  });
}
