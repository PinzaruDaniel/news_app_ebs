import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_ebs/pages/detail_page/widgets/detail_news_list_view_widget.dart';

import '../../theme/app_colors.dart';
import '../../views/view_models.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.newsItem});

  final NewsViewModel newsItem;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Get.back();},
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primary,
          ),
        ),

      ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                children: [
                  DetailNewsListViewWidget(itemNews: widget.newsItem),
                ],
                ),
            )
        )
    );
  }
}
