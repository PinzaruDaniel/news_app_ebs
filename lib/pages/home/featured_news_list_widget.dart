import 'package:flutter/material.dart';
import '../../view/view_models.dart';
import '../detail_page/detail_page.dart';
import 'featured_news_list_view_widget.dart';
import 'header_title_widget.dart';

class FeaturedNewsListWidget extends StatefulWidget {
  const FeaturedNewsListWidget({super.key, required this.news});

  final List<NewsViewModel> news;

  @override
  State<FeaturedNewsListWidget> createState() => _FeaturedNewsListWidgetState();
}

class _FeaturedNewsListWidgetState extends State<FeaturedNewsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderTitleWidget(titleKey: 'Featured', seeAll: () {}),

        InkWell(
          /*focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailPage(newsItem: widget.news)));
          },*/
          child: Container(
            height: 250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
            child: widget.news.isNotEmpty
                ? ListView.builder(
                    padding: EdgeInsets.only(top: 12, left: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.news.length,
                    itemBuilder: (context, index) {
                      var itemNews = widget.news[index];
                      return FeaturedNewsViewWidget(itemNews: itemNews);
                    },
                  )
                : Container(
                    height: 250,
                    width: 150,
                    color: Colors.red,
                    child: Text('at the moment there are no news to show'),
                  ),
          ),
        ),
      ],
    );
  }
}
