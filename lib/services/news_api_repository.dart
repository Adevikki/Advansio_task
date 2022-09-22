import 'package:advansio_test/app/models/news_model/news_model.dart';
import 'package:advansio_test/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsReopository = Provider((ref) => NewsRepository(ref));
class NewsRepository {
  final Ref _ref;
  NewsRepository(this._ref);

  Future<List<Article>> getNews() async {
    final dio = Dio();
    final response = await dio.get(
      endPointUrl,
      queryParameters: {
        'apiKey': apiKey
      },
    );
      List data = response.data["articles"];
    List<Article> articles = data.map((e) => Article.fromJson(e)).toList();
    return articles;
  }

}
