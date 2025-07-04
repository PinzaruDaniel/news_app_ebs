import 'package:flutter/material.dart';
import 'package:news_app_ebs/pages/detail_page/detail_page.dart';
import '../../../views/view_models.dart';
import 'news_image_section_widget.dart';
import 'news_text_section_widget.dart';

class HomeNewsListItemWidget extends StatefulWidget {
  const HomeNewsListItemWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  State<HomeNewsListItemWidget> createState() => _HomeNewsListItemWidgetState();
}

class _HomeNewsListItemWidgetState extends State<HomeNewsListItemWidget> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailPage(newsItem: widget.itemNews)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(18),
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewsImageSectionWidget(imageUrl: widget.itemNews.imageUrl),
            Expanded(child: NewsTextSectionWidget(itemNews: widget.itemNews)),
          ],
        ),
      ),
    );
  }
}
