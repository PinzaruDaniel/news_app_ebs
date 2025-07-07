import 'package:flutter/material.dart';
import 'package:news_app_ebs/views/view_models.dart';

import '../../../theme/app_text_style.dart';

class DetailNewsDescriptionWidget extends StatelessWidget {
  const DetailNewsDescriptionWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: itemNews.description.map((paragraph) {
        return Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: Text(paragraph, style: AppTextStyles.medium.copyWith(fontSize: 12)),
        );
      }).toList(),
    );
  }
}
