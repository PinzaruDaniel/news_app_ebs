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
      children: itemNews.hashtags.map((tag) {
        return TextButton(
          style: TextButton.styleFrom(
            side: const BorderSide(width: 1, color: AppColors.primary),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
          onPressed: () {},
          child: Text('#$tag', style: AppTextStyles.primaryButton.copyWith(fontSize: 14)),
        );
      }).toList(),
    );
  }
}
