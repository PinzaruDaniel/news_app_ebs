import 'package:flutter/material.dart';
import 'package:news_app_ebs/view/view_models.dart';

import '../../theme/app_text_style.dart';

class NewsStatsScetionWidget extends StatelessWidget {
  const NewsStatsScetionWidget({super.key, required this.itemNews});
  final NewsViewModel itemNews;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage('assets/icons/like.png'), width: 16, height: 16),
        SizedBox(width: 4),
        Text(itemNews.likes, style: AppTextStyles.bold.copyWith(fontSize: 10)),
        SizedBox(width: 16),
        Image(image: AssetImage('assets/icons/comments.png'), width: 16, height: 16),
        Text(itemNews.comments, style: AppTextStyles.bold.copyWith(fontSize: 10)),
      ],
    );
  }
}
