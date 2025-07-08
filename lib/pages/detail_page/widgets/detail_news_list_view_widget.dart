import 'package:flutter/material.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/detail_news_description_widget.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/detail_news_publisher_row_widget.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/detail_news_tags_widget.dart';
import 'package:news_app_ebs/views/view_models.dart';

import '../../../theme/app_text_style.dart';
import 'detail_news_stats_row_widget.dart';
import 'detail_news_topic_widget.dart';

class DetailNewsListViewWidget extends StatefulWidget {
  const DetailNewsListViewWidget({super.key, required this.item});

  final NewsViewModel item;

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
          _headerWidget(widget.item.title, widget.item.imageUrl),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 8),
            child: Row(
              children: [
                DetailNewsTopicWidget(itemNews: widget.item),

                ReviewItemWidget(icon: 'assets/icons/views.svg', textKey: widget.item.views),
                ReviewItemWidget(icon: 'assets/icons/like.svg', textKey: widget.item.likes),
                ReviewItemWidget(icon: 'assets/icons/comments.svg', textKey: widget.item.comments),
              ],
            ),
          ),

          DetailNewsPublisherRowWidget(itemNews: widget.item),

          DetailNewsDescriptionWidget(description: widget.item.description),

          DetailNewsTagsWidget(itemNews: widget.item),
        ],
      ),
    );
  }

  Widget _headerWidget(String name, String pathUrl) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          child: Center(
            child: Image(fit: BoxFit.cover, height: 250, width: double.infinity, image: AssetImage(pathUrl)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(name, style: AppTextStyles.bold),
        ),
      ],
    );
  }
}
