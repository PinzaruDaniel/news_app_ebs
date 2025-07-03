import 'package:flutter/material.dart';
import 'package:news_app_ebs/pages/detail_page/detail_page.dart';
import '../../view/view_models.dart';
import 'news_image_section_widget.dart';
import 'news_text_section_widget.dart';

class HomeNewsListViewWidget extends StatefulWidget {
  const HomeNewsListViewWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  State<HomeNewsListViewWidget> createState() => _HomeNewsListViewWidgetState();
}

class _HomeNewsListViewWidgetState extends State<HomeNewsListViewWidget> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 16),
      child: InkWell(
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(newsItem: widget.itemNews)));
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(18),
          ),
          /*height: 156,
          width: 358,*/
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsImageSectionWidget(imageUrl: widget.itemNews.imageUrl),
                  NewsTextSectionWidget(itemNews: widget.itemNews),
                ],
              ),
              Positioned(
                bottom: 12,
                right: 12,
                child: InkWell(
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      isBookmarked = !isBookmarked;
                    });
                  },
                  child: SizedBox(
                    width: 26,
                    height: 26,
                    child: Image.asset(
                      isBookmarked ? 'assets/icons/bookmark_filles.png' : 'assets/icons/bookmark.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
