import 'package:flutter/material.dart';
import 'package:news_app_ebs/theme/app_colors.dart';
import 'package:news_app_ebs/theme/app_text_style.dart';
import 'package:readmore/readmore.dart';
import '../view/view_models.dart';

class FeaturedNewsViewWidget extends StatefulWidget {
  const FeaturedNewsViewWidget({super.key, required this.itemNews});

  final NewsViewModel itemNews;

  @override
  State<FeaturedNewsViewWidget> createState() => _FeaturedNewsViewWidgetState();
}

class _FeaturedNewsViewWidgetState extends State<FeaturedNewsViewWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
          width: 310,
          decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(24)),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: AssetImage(widget.itemNews.imageUrl),
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(width: double.infinity, height: double.infinity, color: Color.fromARGB(50, 0, 0, 0)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ReadMoreText(
                        widget.itemNews.title,
                        style: AppTextsStyle.featuredTitle,
                        trimMode: TrimMode.Line,
                        trimLines: 1,
                        trimCollapsedText: '   ',
                        trimExpandedText: '    ',
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      heightFactor: 1.15,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.secondary,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                          ),
                          child: Text('Read Now', style: AppTextsStyle.featuredButton.copyWith()),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
