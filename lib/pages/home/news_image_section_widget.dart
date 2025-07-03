import 'package:flutter/material.dart';

class NewsImageSectionWidget extends StatelessWidget {
  const NewsImageSectionWidget({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
      child: Image(
        height: 156,
        width: 150,
        fit: BoxFit.cover,
        image: AssetImage(imageUrl),
      ),
    );
  }
}
