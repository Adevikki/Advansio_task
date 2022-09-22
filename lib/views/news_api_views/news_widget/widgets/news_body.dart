import 'package:advansio_test/views/news_viewmodel/news_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'stack_small_card.dart';

class NewsBody extends ConsumerWidget {
  const NewsBody({
    required this.url,
    Key? key,
    required this.time,
    required this.image,
    required this.source,
    required this.title,
  }) : super(key: key);

  final String time, image, source, title, url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.read(newsModelProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    offset: Offset(0, 0),
                    spreadRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            StackPositionWidget(
              text: source,
              bottom: 25,
              right: 30,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            StackPositionWidget(
              color: Colors.white24,
              top: 25,
              right: 30,
              borderRadius: BorderRadius.circular(25),
              widget: GestureDetector(
                onTap: () {
                  model.launchUrl(url);
                },
                child: Row(
                  children: [
                    const Icon(Icons.launch),
                    Text(
                      'Read more',
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            StackPositionWidget(
              bottom: 25,
              left: 30,
              borderRadius: BorderRadius.circular(10),
              widget: Row(
                children: [
                  const Icon(Icons.access_time),
                  Text(
                    time.isEmpty ? '' : time,
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.only(left: 50, right: 20),
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lato(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
