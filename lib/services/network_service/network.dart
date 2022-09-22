import 'package:dio/dio.dart';

abstract class Network {
  Future<Response> post({
    required  dynamic data,
    required String path,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  });
  Future<Response> put({
    required  dynamic data,
    required String path,
    Map<String, dynamic>? queryParameters,
  });
  Future<Response> delete({
    required String path,
    required Map<String, dynamic> data,
    Map<String,dynamic> queryParameters,
  });
  Future<Response> patch({
    required Map<String, dynamic> data,
    required String path,
    Map<String, dynamic>? queryParameters,
  });
  Future<void> logout();
  Future<Response> postMultipart({
      required String imageUrl,
       String? token,
      required String pathName,
        required String path,
  });
}
