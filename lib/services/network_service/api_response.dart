import 'package:dio/dio.dart';

class ApiResponse<T> {
  final bool successful;
  final T? data;
  final String? message;
  final String? error;

  ApiResponse({
    required this.successful,
    this.data,
    this.message,
    this.error,
  });

 factory ApiResponse.handleError(DioError e) {
    return ApiResponse(
        successful: false,
        data: null,
        error: _getMessage(
          e,
        ));
  }

  
}

_getMessage(DioError e) {
    if (e.type == DioErrorType.response) {
      if (e.response != null && e.response!.data is String) {
        return e.response!.data;
      }
      return "Something went wrong";
    } else if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.receiveTimeout ||
        e.type == DioErrorType.sendTimeout) {
      return "Your connection timed out, please try again";
    } else {
      return " Please check your internet connection";
    }
  }