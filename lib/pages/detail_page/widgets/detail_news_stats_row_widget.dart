import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../theme/app_text_style.dart';

class DetailNewsStatsRowWidget extends StatelessWidget {
  const DetailNewsStatsRowWidget({super.key, required this.icon, required this.textStats});

  final String icon;
  final String textStats;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 8),
      child: Row(
        children: [
          SvgPicture.asset(icon, width: 12, height: 12),
          SizedBox(width: 4),
          Text(textStats, style: AppTextStyles.bold.copyWith(fontSize: 10)),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
