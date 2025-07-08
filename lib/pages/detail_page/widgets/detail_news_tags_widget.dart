import 'package:flutter/material.dart';
import 'package:news_app_ebs/views/view_models.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_style.dart';

class DetailNewsTagsWidget extends StatelessWidget {
  const DetailNewsTagsWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: itemNews.hashtags.map((tag) {

        //in container
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.primary, width: 1)
          ),
          child: Text('#$tag', style: AppTextStyles.primaryButton.copyWith(fontSize: 14)),
        );
      }).toList(),
    );
  }
}
