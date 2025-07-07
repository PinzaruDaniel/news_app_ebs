import 'package:flutter/material.dart';
import 'package:news_app_ebs/views/view_models.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_style.dart';

class DetailNewsPublisherRowWidget extends StatelessWidget {
  const DetailNewsPublisherRowWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(itemNews.publisherIcon, width: 32, height: 32, fit: BoxFit.cover),
        SizedBox(width: 4),
        Text(itemNews.publisher, style: AppTextStyles.primaryButton.copyWith(fontSize: 14)),
        SizedBox(width: 12),
        Spacer(),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: AppColors.primary,
            fixedSize: Size(85, 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(color: Colors.transparent),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.add, color: Colors.white, size: 16),
              Text('Follow', style: AppTextStyles.secondaryButton),
            ],
          ),
        ),
      ],
    );
  }
}
