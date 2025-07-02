import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app_ebs/theme/app_colors.dart';
import 'package:news_app_ebs/theme/app_text_style.dart';
import '../view/view_models.dart';

class HomeNewsListViewWidget extends StatefulWidget {
  const HomeNewsListViewWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  State<HomeNewsListViewWidget> createState() => _HomeNewsListViewWidgetState();
}

class _HomeNewsListViewWidgetState extends State<HomeNewsListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 16),
      child: InkWell(
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(18),
          ),
          height: 156,
          width: 358,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
                child: Image(height: 156, width: 150, fit: BoxFit.cover, image: AssetImage(widget.itemNews.imageUrl)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      child: Text(
                        widget.itemNews.title,
                        style: AppTextsStyle.headerTitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Image(image: AssetImage(widget.itemNews.publisherIcon)),
                        SizedBox(width: 4),
                        Text(widget.itemNews.publisher, style: AppTextsStyle.iconsText),
                        SizedBox(width: 12),
                        TextButton(
                          style: TextButton.styleFrom(
                            side: BorderSide(color: AppColors.primary),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            minimumSize: Size(5,4),
                          ),
                          onPressed: () {},
                          child: Text(widget.itemNews.topic, style: AppTextsStyle.buttonsHome),
                        ),
                      ],
                    ),
                    
                    Row(
                      children: [
                        Image(image: AssetImage('assets/icons/like.png'), width: 16, height: 16,),
                        SizedBox(width: 4,),
                        Text(widget.itemNews.likes, style: AppTextsStyle.iconsText,),
                        SizedBox(width: 16,),
                        Image(image: AssetImage('assets/icons/comments.png'), width: 16, height: 16,),
                        Text(widget.itemNews.comments, style: AppTextsStyle.iconsText,),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Image(image: AssetImage('assets/icons/bookmark.png'), width: 16, height: 16,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
