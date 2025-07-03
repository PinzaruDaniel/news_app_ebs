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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewsImageSectionWidget(imageUrl: widget.itemNews.imageUrl),
              NewsTextSectionWidget(itemNews: widget.itemNews),
            ],

          ),
        ),
      ),
    );
  }
}
