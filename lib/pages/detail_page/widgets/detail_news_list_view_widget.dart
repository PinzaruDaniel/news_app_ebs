import 'package:flutter/material.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/detail_news_description_widget.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/detail_news_image_widget.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/detail_news_publisher_row_widget.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/detail_news_tags_widget.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/details_news_title_widget.dart';
import 'package:news_app_ebs/views/view_models.dart';

import 'detail_news_stats_row_widget.dart';
import 'detail_news_topic_widget.dart';

class DetailNewsListViewWidget extends StatefulWidget {
  const DetailNewsListViewWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  State<DetailNewsListViewWidget> createState() => _DetailNewsListViewWidgetState();
}

class _DetailNewsListViewWidgetState extends State<DetailNewsListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DetailNewsImageWidget(itemNews: widget.itemNews),
          DetailsNewsTitleWidget(itemNews: widget.itemNews),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 8),
            child: Row(
              children: [
                DetailNewsTopicWidget(itemNews: widget.itemNews),

                DetailNewsStatsRowWidget(icon: 'assets/icons/views.svg', textStats: widget.itemNews.views),
                DetailNewsStatsRowWidget(icon: 'assets/icons/like.svg', textStats: widget.itemNews.likes),
                DetailNewsStatsRowWidget(icon: 'assets/icons/comments.svg', textStats: widget.itemNews.comments),
              ],
            ),
          ),

          DetailNewsPublisherRowWidget(itemNews: widget.itemNews),

          DetailNewsDescriptionWidget(itemNews: widget.itemNews),

          DetailNewsTagsWidget(itemNews: widget.itemNews),
        ],
      ),
    );
  }
}
