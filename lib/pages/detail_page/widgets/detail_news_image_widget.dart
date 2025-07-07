import 'package:flutter/material.dart';
import 'package:news_app_ebs/views/view_models.dart';

class DetailNewsImageWidget extends StatelessWidget {
  const DetailNewsImageWidget({super.key, required this.itemNews});
  final NewsViewModel itemNews;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      child: Center(
        child: Image(
          fit: BoxFit.cover,
          height: 250,
          width: double.infinity,
          image: AssetImage(itemNews.imageUrl),
        ),
      ),
    );

  }
}
