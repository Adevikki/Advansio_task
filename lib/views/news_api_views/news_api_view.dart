import 'package:advansio_test/utils/enums.dart';
import 'package:advansio_test/views/news_api_views/news_widget/widgets/news_body.dart';
import 'package:advansio_test/views/news_viewmodel/news_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class NewsPage extends ConsumerStatefulWidget {
  static String routeName = '/news-page';
  const NewsPage({Key? key}) : super(key: key);
  @override
  NewsPageState createState() => NewsPageState();
}

class NewsPageState extends ConsumerState<NewsPage> {
  @override
  void initState() {
    ref.read(newsModelProvider.notifier).getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final view = ref.watch(newsModelProvider);
    return Scaffold(
      body: view.isLoading == Status.loading
          ? const Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 40,
                width: 40,
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            )
          : SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(7),
                    margin: const EdgeInsets.all(20),
                    child: Text(
                      "News",
                      style: GoogleFonts.lato(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          offset: Offset(0, 0),
                          spreadRadius: 4,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                        padding: const EdgeInsets.only(bottom: 30),
                        itemCount: view.articles!.length,
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          var time = DateFormat('MMM, d')
                              .format(view.articles![index].publishedAt);
                          return NewsBody(
                            image: view.articles![index].urlToImage,
                            source: view.articles![index].source.name,
                            title: view.articles![index].title,
                            url: view.articles![index].url,
                            time: time,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
