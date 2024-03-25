class FormatsEntity {
  final String? textHtml;
  final String? applicationEpubZip;
  final String? applicationXMobipocketEbook;
  final String? applicationRdfXml;
  final String? imageJpeg;
  final String? textPlainCharsetUsAscii;
  final String? applicationOctetStream;

  FormatsEntity({
    this.textHtml,
    this.applicationEpubZip,
    this.applicationXMobipocketEbook,
    this.applicationRdfXml,
    this.imageJpeg,
    this.textPlainCharsetUsAscii,
    this.applicationOctetStream,
  });

  FormatsEntity copyWith({
    String? textHtml,
    String? applicationEpubZip,
    String? applicationXMobipocketEbook,
    String? applicationRdfXml,
    String? imageJpeg,
    String? textPlainCharsetUsAscii,
    String? applicationOctetStream,
  }) =>
      FormatsEntity(
        textHtml: textHtml ?? this.textHtml,
        applicationEpubZip: applicationEpubZip ?? this.applicationEpubZip,
        applicationXMobipocketEbook: applicationXMobipocketEbook ?? this.applicationXMobipocketEbook,
        applicationRdfXml: applicationRdfXml ?? this.applicationRdfXml,
        imageJpeg: imageJpeg ?? this.imageJpeg,
        textPlainCharsetUsAscii: textPlainCharsetUsAscii ?? this.textPlainCharsetUsAscii,
        applicationOctetStream: applicationOctetStream ?? this.applicationOctetStream,
      );
}