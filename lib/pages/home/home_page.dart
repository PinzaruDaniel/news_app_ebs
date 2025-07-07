import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_ebs/controller/news_controller.dart';

import 'widget/featured_news_list_widget.dart';
import 'widget/home_news_list_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NewsController get newsController => Get.find();

  @override
  void initState() {
    super.initState();
    Get.put(NewsController());
    newsController.initNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            Obx(() => FeaturedNewsListWidget(news: newsController.news.value)),
            Expanded(child: HomeNewsListWidget(itemNews: newsController.news.value)),

          ],
        ),
      ),
    );
  }
}
