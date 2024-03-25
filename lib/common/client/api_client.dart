import 'dart:convert';
import 'package:dio/dio.dart';

import 'api_client_model.dart';

class ApiClient {
  final Dio _dio = Dio();
  Map<String, dynamic> headers = {};

  // https://www.googleapis.com/books/v1/volumes?q=hello&filter=free-ebooks&key=AIzaSyAqxw3nnCxwNQXRmXb-ZFi8FTNyhz6kwGA

  /**GOOGLE BOOKS API EBOOK*/
  Future<ApiClientModel> getMethod(
      {required bool isHeader, Map<String, dynamic>? body}) async {
    try {
      String searchTerm = body?['search'] ?? 'flutter';

      final res = await _dio.get(
        'https://www.googleapis.com/books/v1/volumes',
        queryParameters: {
          'q': searchTerm,
          'filter': 'free-ebooks',
          'key': 'AIzaSyAcBasxrY_AJEsdBK1g7vLR-eZ4su88nlk'
        },
      );

      return _handlerResponse(res);
    } on DioError catch (e) {
      return _handlerError(e);
    }
  }

  Future<ApiClientModel> postMethod(
      {required String path,
      required bool isHeader,
      Map<String, dynamic>? body}) async {
    try {
      final res = await _dio.post(
        path,
        data: jsonEncode(body ?? {}),
        options: Options(headers: isHeader ? headers : null),
      );

      return _handlerResponse(res);
    } on DioError catch (e) {
      return _handlerError(e);
    }
  }

  Future<ApiClientModel> deleteMethod(
      {required String path,
      required bool isHeader,
      Map<String, dynamic>? body}) async {
    try {
      final res = await _dio.delete(
        path,
        data: jsonEncode(body ?? {}),
        options: Options(headers: isHeader ? headers : null),
      );

      return _handlerResponse(res);
    } on DioError catch (e) {
      return _handlerError(e);
    }
  }

  Future<ApiClientModel> updateMethod(
      {required String path,
      required bool isHeader,
      Map<String, dynamic>? body}) async {
    try {
      final res = await _dio.put(
        path,
        data: jsonEncode(body ?? {}),
        options: Options(headers: isHeader ? headers : null),
      );

      return _handlerResponse(res);
    } on DioError catch (e) {
      return _handlerError(e);
    }
  }

  /**GOOGLE BOOKS API END*/

  /**GUTENBERG EBOOK GET*/
  Future<ApiClientModel> getEBook(
      {required bool isHeader, Map<String, dynamic>? body}) async {
    try {
      String searchTerm = body?['search'] ?? 'flutter';

      final res = await _dio.get(
        'https://gutendex.com/books/',
      );

      return _handlerResponse(res);
    } on DioError catch (e) {
      return _handlerError(e);
    }
  }

  /**GUTENBERG EBOOK END*/
  /**HANDLER*/

  ApiClientModel _handlerResponse(Response res) {
    if (res.statusCode! >= 200 && res.statusCode! < 300) {
      return ApiClientModel(
          statusCode: res.statusCode, response: res.data, isSuccess: true);
    }
    return ApiClientModel(
        statusCode: res.statusCode, response: res.data, isSuccess: false);
  }

  ApiClientModel _handlerError(DioError e) {
    return ApiClientModel(
        statusCode: e.response?.statusCode,
        response: e.message.toString(),
        isSuccess: false);
  }
}
