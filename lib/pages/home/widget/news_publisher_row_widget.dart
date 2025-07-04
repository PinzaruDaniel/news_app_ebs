import 'package:flutter/material.dart';
import 'package:news_app_ebs/theme/app_text_style.dart';
import '../../../views/view_models.dart';

import '../../../theme/app_colors.dart';

class NewsPublisherRowWidget extends StatelessWidget {
  const NewsPublisherRowWidget({super.key, required this.newsItem});

  final NewsViewModel newsItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(newsItem.publisherIcon, width: 16, height: 16),
        SizedBox(width: 4),
        Text(newsItem.publisher, style: AppTextStyles.bold.copyWith(fontSize: 10)),
        SizedBox(width: 12),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 1, color: AppColors.primary),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
            minimumSize: Size(4, 5),
          ),
          child: Text(newsItem.topic, style: AppTextStyles.primaryButton.copyWith(fontSize: 10),),
        ),

      ],
    );
  }
}
