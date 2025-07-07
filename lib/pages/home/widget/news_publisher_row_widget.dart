import 'package:flutter/material.dart';
import 'package:news_app_ebs/theme/app_text_style.dart';
import '../../../views/view_models.dart';

import '../../../theme/app_colors.dart';

class NewsPublisherRowWidget extends StatelessWidget {
  const NewsPublisherRowWidget({super.key, required this.newsItem});

  final NewsViewModel newsItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,bottom: 12.0),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              child: Image.asset(newsItem.publisherIcon, width: 16, height: 16, fit: BoxFit.cover,)),
          SizedBox(width: 4),
          Text(newsItem.publisher, style: AppTextStyles.bold.copyWith(fontSize: 10)),
          SizedBox(width: 12),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.primary, width: 1)
            ),
            child: Text(newsItem.topic, style: AppTextStyles.primaryButton.copyWith(fontSize: 10)),
          ),
        ],
      ),
    );
  }
}
