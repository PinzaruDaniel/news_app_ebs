import 'package:flutter/material.dart';

import '../../view/view_models.dart';
import 'header_title_widget.dart';
import 'home_news_list_view_widget.dart';

class HomeNewsListWidget extends StatefulWidget {
  const HomeNewsListWidget({super.key, required this.news});

  final List<NewsViewModel> news;

  @override
  State<HomeNewsListWidget> createState() => _HomeNewsListWidgetState();
}

class _HomeNewsListWidgetState extends State<HomeNewsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: HeaderTitleWidget(titleKey: 'News', seeAll: () {}),
        ),
        Container(
          height: 250,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
          child: widget.news.isNotEmpty
              ? ListView.builder(
                padding: EdgeInsets.only(left: 16),
               shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: widget.news.length,
                itemBuilder: (context, index) {
                  var itemNews = widget.news[index];
                  return HomeNewsListViewWidget(itemNews: itemNews);
                },
              )
              : Container(
                  height: 250,
                  width: 150,
                  color: Colors.red,
                  child: Text('at the moment there are no news to show'),
                ),
        ),
      ],
    );
  }
}
