import 'package:flutter/material.dart';


import '../../../theme/app_text_style.dart';
import '../../../views/view_models.dart';
import 'news_publisher_row_widget.dart';
import 'news_stats_section_widget.dart';

class NewsTextSectionWidget extends StatelessWidget {
  const NewsTextSectionWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    itemNews.title,
                    style: AppTextStyles.bold.copyWith(fontSize: 18),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: NewsPublisherRowWidget(newsItem: itemNews),
            ),

            NewsStatsSectionWidget(itemNews: itemNews),
          ],
        ),
      );
  }
}
