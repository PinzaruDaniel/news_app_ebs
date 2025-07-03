import 'package:flutter/material.dart';
import 'package:news_app_ebs/view/view_models.dart';

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
        body: SafeArea(
            child: SingleChildScrollView(

            )
        )
    );
  }
}
