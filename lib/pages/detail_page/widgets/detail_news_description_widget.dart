import 'package:flutter/material.dart';
import '../../../theme/app_text_style.dart';

class DetailNewsDescriptionWidget extends StatelessWidget {
  const DetailNewsDescriptionWidget({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: description.split('\n').map((paragraph) {
          return Padding(
            padding: EdgeInsets.only( bottom: 8),
            child: Text(paragraph, style: AppTextStyles.medium.copyWith(fontSize: 12)),
          );
        }).toList(),
      ),
    );
  }
}
