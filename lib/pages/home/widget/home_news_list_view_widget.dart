import 'package:flutter/material.dart';
import '../../../views/view_models.dart';
import 'header_title_widget.dart';
import 'home_news_list_item_widget.dart';

class HomeNewsListWidget extends StatefulWidget {
  const HomeNewsListWidget({super.key, required this.itemNews});

  final List<NewsViewModel> itemNews;

  @override
  State<HomeNewsListWidget> createState() => _HomeNewsListWidgetState();
}

class _HomeNewsListWidgetState extends State<HomeNewsListWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: HeaderTitleWidget(titleKey: 'News', seeAll: () {}),
        ),
        widget.itemNews.isNotEmpty
            ? Expanded(
              child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                       //   shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: widget.itemNews.length,
                          itemBuilder: (context, index) {
              var itemNews = widget.itemNews[index];
              return HomeNewsListItemWidget(itemNews: itemNews);
                          },
                        ),
            )
            : Container(
          height: 250,
          width: 150,
          color: Colors.red,
          child: Text('at the moment there are no news to show'),
        ),
      ],
    );
  }
}
