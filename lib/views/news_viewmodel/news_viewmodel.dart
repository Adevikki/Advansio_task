import 'package:advansio_test/app/models/news_model/news_model.dart';
import 'package:advansio_test/services/news_api_repository.dart';
import 'package:advansio_test/utils/debug_functions.dart';
import 'package:advansio_test/utils/enums.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

final newsModelProvider = StateNotifierProvider<NewsViewModel, NewsViewState>(
  (ref) => NewsViewModel(ref),
);

class NewsViewModel extends StateNotifier<NewsViewState> {
  NewsViewModel(this._ref) : super(NewsViewState.initial());
  final Ref _ref;

  Future<void> getNews() async {
    state = state.copyWith(isLoading: Status.loading);
    try {
      final response = await _ref.read(newsReopository).getNews();
      state = state.copyWith(
        isLoading: Status.loaded,
        articles: response,
      );
    } on DioError catch (e) {
      debugLog(e);
      state = state.copyWith(
        isLoading: Status.error,
      );
    }
  }

  void launchUrl(urlString) async {
    try {
      await launch(urlString);
    } catch (e) {
      rethrow;
    }
  }
}

class NewsViewState {
  final List<Article>? articles;
  final Status isLoading;
  NewsViewState({
    this.articles,
    required this.isLoading,
  });

  factory NewsViewState.initial() => NewsViewState(
        isLoading: Status.loading,
        articles: const [],
      );
  NewsViewState copyWith({
    List<Article>? articles,
    Status? isLoading,
  }) {
    return NewsViewState(
        articles: articles ?? this.articles,
        isLoading: isLoading ?? this.isLoading);
  }
}
