import 'package:isar/isar.dart';

part 'format_model.g.dart';

@Collection()
class FormatModel {
  Id id = Isar.autoIncrement;
  late String? textHtml;
  late String? applicationEpubZip;
  late String? imageJpeg;
  late String? textPlainCharsetUsAscii;
  late String? applicationOctetStream;
  late int? resultModelRemoteId;

  FormatModel({
    required this.textHtml,
    required this.applicationEpubZip,
    required this.imageJpeg,
    required this.textPlainCharsetUsAscii,
    required this.applicationOctetStream,
    required this.resultModelRemoteId,
  });
}
