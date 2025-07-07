import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app_ebs/theme/app_text_style.dart';
import 'package:news_app_ebs/views/view_models.dart';

import '../../../theme/app_colors.dart';

class DetailNewsListViewWidget extends StatefulWidget {
  const DetailNewsListViewWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  State<DetailNewsListViewWidget> createState() => _DetailNewsListViewWidgetState();
}

class _DetailNewsListViewWidgetState extends State<DetailNewsListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            child: Center(
              child: Image(
                fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
                image: AssetImage(widget.itemNews.imageUrl),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(widget.itemNews.title, style: AppTextStyles.bold),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1, color: AppColors.primary),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                    minimumSize: Size(4, 5),
                  ),
                  child: Text(widget.itemNews.topic, style: AppTextStyles.primaryButton.copyWith(fontSize: 10)),
                ),
              ),
              SvgPicture.asset('assets/icons/views.svg', width: 12, height: 12),
              SizedBox(width: 4),
              Text(widget.itemNews.views, style: AppTextStyles.bold.copyWith(fontSize: 10)),
              SizedBox(width: 16),
              SvgPicture.asset('assets/icons/like.svg', width: 12, height: 12),
              SizedBox(width: 4),
              Text(widget.itemNews.likes, style: AppTextStyles.bold.copyWith(fontSize: 10)),
              SizedBox(width: 16),
              SvgPicture.asset('assets/icons/comments.svg', width: 12, height: 12),
              SizedBox(width: 4),
              Text(widget.itemNews.comments, style: AppTextStyles.bold.copyWith(fontSize: 10)),
            ],
          ),

          Row(
            children: [
              Image.asset(widget.itemNews.publisherIcon, width: 32, height: 32, fit: BoxFit.cover),
              SizedBox(width: 4),
              Text(widget.itemNews.publisher, style: AppTextStyles.primaryButton.copyWith(fontSize: 14)),
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
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.itemNews.description.map((paragraph) {
              return Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text(paragraph, style: AppTextStyles.medium.copyWith(fontSize: 12)),
              );
            }).toList(),
          ),

          Wrap(
            //crossAxisAlignment: WrapCrossAlignment.start,
            //spacing:0,
            //runSpacing: 0,
            children: widget.itemNews.hashtags.map((tag) {
              return TextButton(
                style: TextButton.styleFrom(
                  side: const BorderSide(width: 1, color: AppColors.primary),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                ),
                onPressed: () {},
                child: Text('#$tag', style: AppTextStyles.primaryButton.copyWith(fontSize: 14)),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
