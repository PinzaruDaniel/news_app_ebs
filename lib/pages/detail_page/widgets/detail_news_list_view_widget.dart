import 'package:flutter/material.dart';
import 'package:news_app_ebs/theme/app_text_style.dart';
import 'package:news_app_ebs/views/view_models.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(24),),
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
            padding: const EdgeInsets.only(left: 8, top: 16.0, bottom: 16),
            child: Text(widget.itemNews.title, style: AppTextStyles.bold,),
          ),
          Row(

          ),
        ],
      ),
    );
  }
}
