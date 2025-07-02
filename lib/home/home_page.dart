import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_ebs/controller/news_controller.dart';
import 'package:news_app_ebs/home/featured_news_list_widget.dart';
import 'package:news_app_ebs/home/home_news_list.dart';
import 'package:news_app_ebs/theme/app_text_style.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() => FeaturedNewsListWidget(news: newsController.news.value)),

              HomeNewsListWidget(news: newsController.news.value),
            ],
          ),
        ),
      ),
    );
  }
}
