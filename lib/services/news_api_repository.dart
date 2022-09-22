import 'package:advansio_test/app/models/news_model/news_model.dart';
import 'package:advansio_test/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'network_service/api_response.dart';

final newsReopository = Provider((ref) => NewsRepository(Dio()));

class NewsRepository {
  const NewsRepository(this.dio);
  final Dio dio;
  Future<ApiResponse<List<Article>>> getNews() async {
    try {
      final response = await dio.get(
        endPointUrl,
        queryParameters: {'apiKey': apiKey},
      );
      List data = response.data["articles"];
      List<Article> articles = data.map((e) => Article.fromJson(e)).toList();
      return ApiResponse(
          successful: true,
          data: articles,
          message: "Data fetched successfully");
    } on DioError catch (e) {
      return ApiResponse.handleError(e);
    }
  }
}
