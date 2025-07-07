import 'package:flutter/material.dart';
import 'package:news_app_ebs/views/view_models.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_text_style.dart';

class DetailNewsTopicWidget extends StatelessWidget {
  const DetailNewsTopicWidget({super.key, required this.itemNews});
  final NewsViewModel  itemNews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: AppColors.primary, width: 1)
        ),
        child: Text(itemNews.topic, style: AppTextStyles.primaryButton.copyWith(fontSize: 10)),
      ),
    );
  }
}
