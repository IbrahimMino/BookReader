import 'package:books/features/data/mapper/gutenberg/e_book_mapper.dart';
import 'package:books/features/domain/entity/gutenberg/e_book_entity.dart';
import 'package:books/features/domain/entity/gutenberg/formats_entity.dart';
import 'package:books/features/domain/entity/gutenberg/result_entity.dart';
import 'package:books/features/domain/model/format_model.dart';
import 'package:books/features/domain/model/result_model.dart';
import 'package:dartz/dartz.dart';
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

  final List<ResultEntity>? currentResultList = [];
  ResultEntity? currentResultEntity = ResultEntity();

  //INSERT
  Future<void> addResult(ResultEntity resultEntity) async {
    final existingResult = await isar.resultModels
        .where()
        .filter()
        .remoteIdEqualTo(resultEntity.remoteId)
        .count();

    print('Added ${existingResult}');

    if (existingResult == 0) {
      ResultModel? resultModel =
          EBookMapper().toResultModelFromDb(resultEntity);

      FormatModel? formatModel = EBookMapper().parseFormatEntityToFormatsModel(
          resultEntity.formatsEntity, resultEntity.remoteId);

      await isar.writeTxn(() => isar.resultModels.put(resultModel!));
      await isar.writeTxn(() => isar.formatModels.put(formatModel));
      await fetchResultOne(resultModel?.remoteId);

      print('localPath ${resultModel?.localPath}');
    } else {
      print('Already added id ${resultEntity.remoteId}');
    }
  }

  //READ
  Future<EBookEntity> fetchResult() async {
    EBookEntity? eBookEntity = EBookEntity();
    currentResultList?.clear();
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

      currentResultList?.add(resultEntity!);
    }
    eBookEntity.results = currentResultList;
    return eBookEntity;
  }

  Future<void> fetchResultOne(int? remoteId) async {
    ResultModel? fetchResultOne = await isar.resultModels
        .where()
        .filter()
        .remoteIdEqualTo(remoteId)
        .findFirst();

    if (fetchResultOne != null) {
      FormatModel? formatModel = await isar.formatModels
          .where()
          .filter()
          .resultModelRemoteIdEqualTo(remoteId)
          .findFirst();

      FormatsEntity? formatEntity =
          EBookMapper().parseFormatModelToFormatsEntity(formatModel!);

      ResultEntity? resultEntity =
          EBookMapper().toResultEntityFromDb(fetchResultOne);

      resultEntity?.formatsEntity = formatEntity;

      currentResultEntity = resultEntity;
      // print(
      //     'currentResultEntity.localPath-> ${currentResultEntity?.localPath}');
    } else {
      currentResultEntity =
          ResultEntity(localImgPath: '', localPath: '', lastPage: '');
      // print('Not Local path False');
    }
    notifyListeners();
  }

  //UPDATE
  Future<void> updateResultLocalImgPath(int? id, String localImgPath) async {
    if (id != null) {
      final existingResult = await isar.resultModels.get(id);
      if (existingResult != null) {
        existingResult.localImgPath = localImgPath;
        await isar.writeTxn(() => isar.resultModels.put(existingResult));
        await fetchResult();
      }
    }
  }

  Future<void> updateResultLocalPath(int? id, String localPath) async {
    if (id != null) {
      final existingResult = await isar.resultModels
          .where()
          .filter()
          .remoteIdEqualTo(id)
          .findFirst();

      if (existingResult != null) {
        existingResult.localPath = localPath;
        await isar.writeTxn(() => isar.resultModels.put(existingResult));
        await fetchResult();
      }
    }
  }

  Future<void> updateResultLastPage(int? id, String lastPage) async {
    if (id != null) {
      final existingResult = await isar.resultModels
          .where()
          .filter()
          .remoteIdEqualTo(id)
          .findFirst();

      if (existingResult != null) {
        existingResult.lastPage = lastPage;
        await isar.writeTxn(() => isar.resultModels.put(existingResult));
        await fetchResult();
      }
    }
  }

  //DELETE
  Future<void> deleteResult(int? id) async {
    final existingResult = await isar.resultModels.get(id!);
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
