import 'package:books/features/data/mapper/gutenberg/e_book_mapper.dart';
import 'package:books/features/domain/entity/gutenberg/formats_entity.dart';
import 'package:books/features/domain/entity/gutenberg/result_entity.dart';
import 'package:books/features/domain/model/format_model.dart';
import 'package:books/features/domain/model/result_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class EBookDatabase extends ChangeNotifier {
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([ResultModelSchema, FormatModelSchema],
        inspector: true, directory: dir.path);
  }

  final List<ResultEntity> currentResultList = [];

  //INSERT
  Future<void> addResult(ResultEntity? resultEntity) async {
    ResultModel? resultModel = EBookMapper().toResultModelFromDb(resultEntity);
    FormatModel? formatModel = EBookMapper().parseFormatEntityToFormatsModel(
        resultEntity?.formatsEntity, resultEntity?.id);
    await isar.writeTxn(() => isar.resultModels.put(resultModel!));
    await isar.writeTxn(() => isar.formatModels.put(formatModel));
    await fetchResult();
  }

  //READ
  Future<void> fetchResult() async {
    currentResultList.clear();
    List<ResultModel> fetchResult = await isar.resultModels.where().findAll();

    for (ResultModel resultModel in fetchResult) {
      FormatModel? formatModel = await isar.formatModels
          .where()
          .filter()
          .resultModelRemoteIdEqualTo(resultModel.remoteId)
          .findFirst();

      FormatsEntity? formatEntity =
          EBookMapper().parseFormatModelToFormatsEntity(formatModel!);

      ResultEntity? resultEntity =
          EBookMapper().toResultEntityFromDb(resultModel);
      resultEntity?.formatsEntity = formatEntity;

      currentResultList.add(resultEntity!);
    }
    notifyListeners();
  }

  //UPDATE
  Future<void> updateResultLocalImgPath(int id, String localImgPath) async {
    final existingResult = await isar.resultModels.get(id);
    if (existingResult != null) {
      existingResult.localImgPath = localImgPath;
      await isar.writeTxn(() => isar.resultModels.put(existingResult));
      await fetchResult();
    }
  }

  Future<void> updateResultLocalPath(int id, String localPath) async {
    final existingResult = await isar.resultModels.get(id);
    if (existingResult != null) {
      existingResult.localPath = localPath;
      await isar.writeTxn(() => isar.resultModels.put(existingResult));
      await fetchResult();
    }
  }

  Future<void> updateResultLastPage(int id, String lastPage) async {
    final existingResult = await isar.resultModels.get(id);
    if (existingResult != null) {
      existingResult.lastPage = lastPage;
      await isar.writeTxn(() => isar.resultModels.put(existingResult));
      await fetchResult();
    }
  }

  //DELETE
  Future<void> deleteResult(int id) async {
    final existingResult = await isar.resultModels.get(id);
    if (existingResult != null) {
      deleteFormat(existingResult.remoteId);
      await isar.writeTxn(() => isar.resultModels.delete(id));
      await fetchResult();
    }
  }

  //INSERT FORMAT
  Future<void> addFormat(FormatModel formatModel) async {
    await isar.writeTxn(() => isar.formatModels.put(formatModel));
  }

  //READ
  Future<FormatModel?> getFormatModelByResultModelRemoteId(
      int resultModelRemoteId) async {
    return await isar.formatModels
        .where()
        .filter()
        .resultModelRemoteIdEqualTo(resultModelRemoteId)
        .findFirst();
  }

  //UPDATE
  Future<void> updateFormat(FormatModel formatModel) async {
    final existingFormat = await isar.formatModels.get(formatModel.id);
    if (existingFormat != null) {
      await isar.writeTxn(() => isar.formatModels.put(formatModel));
    }
  }

  //DELETE
  Future<void> deleteFormat(int? resultRemoteId) async {
    final existingFormat = await isar.formatModels
        .where()
        .filter()
        .resultModelRemoteIdEqualTo(resultRemoteId)
        .findFirst();

    if (existingFormat != null) {
      await isar.writeTxn(() => isar.formatModels.delete(existingFormat.id));
    }
  }
}
