import 'package:advansio_test/app/models/news_model/news_model.dart';
import 'package:advansio_test/services/news_api_repository.dart';
import 'package:advansio_test/utils/debug_functions.dart';
import 'package:advansio_test/utils/enums.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

final newsModelProvider = StateNotifierProvider<NewsViewModel, NewsViewState>(
  (ref) => NewsViewModel(ref),
);

class NewsViewModel extends StateNotifier<NewsViewState> {
  NewsViewModel(this._ref) : super(NewsViewState.initial());
  final Ref _ref;

  Future<void> getNews({
    bool retry = false,
  }) async {
    if (retry) {
      state = state.copyWith(isLoading: Status.loading);
    }
    try {
      final response = await _ref.read(newsReopository).getNews();
      if (response.successful) {
        state =
            state.copyWith(isLoading: Status.loaded, articles: response.data);
        return;
      }
      state =
          state.copyWith(isLoading: Status.error, errorMessage: response.error);
    } catch (e) {
      debugLog(e);
      state =
          state.copyWith(isLoading: Status.error, errorMessage: e.toString());
    }
  }

  void launchUrl(urlString) async {
    try {
      await canLaunchUrl(urlString);
    } catch (e) {
      rethrow;
    }
  }
}

class NewsViewState {
  final List<Article>? articles;
  final Status isLoading;
  final String? errorMessage;
  NewsViewState({this.articles, required this.isLoading, this.errorMessage});

  factory NewsViewState.initial() => NewsViewState(
        isLoading: Status.loading,
        articles: const [],
      );
  NewsViewState copyWith({
    List<Article>? articles,
    Status? isLoading,
    String? errorMessage,
  }) {
    return NewsViewState(
      articles: articles ?? this.articles,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
