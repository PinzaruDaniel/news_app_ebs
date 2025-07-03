import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles{

  static const TextStyle bold= TextStyle(
    fontFamily: 'SourceSans3_Bold',
    fontSize: 20,
    color: Colors.black,

  );
  static const TextStyle medium= TextStyle(
    fontFamily: 'SourceSans3-Medium',
    fontSize: 16,
    color: Colors.black,
  );

  static const TextStyle primaryButton= TextStyle(
    fontFamily: 'SourceSans3-Medium',
    fontSize: 16,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );


  static const TextStyle secondaryButton= TextStyle(
    fontFamily: 'SourceSans3',
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}