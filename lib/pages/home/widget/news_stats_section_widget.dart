import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../views/view_models.dart';

import '../../../theme/app_text_style.dart';

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
        SvgPicture.asset('assets/icons/like.svg', width: 16,height: 16,),
        SizedBox(width: 4),
        Text(widget.itemNews.likes, style: AppTextStyles.bold.copyWith(fontSize: 10)),
        SizedBox(width: 16),
        SvgPicture.asset('assets/icons/comments.svg', width: 16,height: 16,),
        Text(widget.itemNews.comments, style: AppTextStyles.bold.copyWith(fontSize: 10)),
       //Spacer(),
        Expanded(child: Container(),),
        InkWell(
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            setState(() {
              isBookmarked = !isBookmarked;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SvgPicture.asset(
              isBookmarked ? 'assets/icons/bookmark-filled.svg' : 'assets/icons/bookmark.svg',

            ),
          ),
        ),
      ],
    );
  }
}
