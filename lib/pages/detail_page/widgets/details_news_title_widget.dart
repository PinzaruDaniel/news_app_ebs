import 'package:flutter/material.dart';
import 'package:news_app_ebs/views/view_models.dart';

import '../../../theme/app_text_style.dart';

class DetailsNewsTitleWidget extends StatelessWidget {
  const DetailsNewsTitleWidget({super.key, required this.itemNews});
  final NewsViewModel itemNews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(itemNews.title, style: AppTextStyles.bold),
    );
  }
}
