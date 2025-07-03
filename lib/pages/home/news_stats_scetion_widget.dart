import 'package:flutter/material.dart';
import 'package:news_app_ebs/view/view_models.dart';

import '../../theme/app_text_style.dart';

class NewsStatsSectionWidget extends StatefulWidget {
  const NewsStatsSectionWidget({super.key, required this.itemNews});
  final NewsViewModel itemNews;

  @override
  State<NewsStatsSectionWidget> createState() => _NewsStatsSectionWidgetState();
}

class _NewsStatsSectionWidgetState extends State<NewsStatsSectionWidget> {
  bool isBookmarked=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage('assets/icons/like.png'), width: 16, height: 16),
        SizedBox(width: 4),
        Text(widget.itemNews.likes, style: AppTextStyles.bold.copyWith(fontSize: 10)),
        SizedBox(width: 16),
        Image(image: AssetImage('assets/icons/comments.png'), width: 16, height: 16),
        Text(widget.itemNews.comments, style: AppTextStyles.bold.copyWith(fontSize: 10)),

        InkWell(
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            setState(() {
              isBookmarked = !isBookmarked;
            });
          },
          child: Image.asset(
            isBookmarked ? 'assets/icons/bookmark_filles.png' : 'assets/icons/bookmark.png',
            width: 16,
            height: 16,
          ),
        ),
      ],
    );
  }
}
