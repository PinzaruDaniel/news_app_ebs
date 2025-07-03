import 'package:flutter/material.dart';
import 'package:news_app_ebs/theme/app_text_style.dart';

class HeaderTitleWidget extends StatefulWidget {
  const HeaderTitleWidget({super.key, required this.titleKey, required this.seeAll});

  final String titleKey;
  final Function seeAll;

  @override
  State<HeaderTitleWidget> createState() => _HeaderTitleWidgetState();
}

class _HeaderTitleWidgetState extends State<HeaderTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              widget.titleKey,
          style: AppTextStyles.bold),
          Text(
            'See all',
            style: AppTextStyles.primaryButton,
          )
        ],
      ),
    );
  }
}
