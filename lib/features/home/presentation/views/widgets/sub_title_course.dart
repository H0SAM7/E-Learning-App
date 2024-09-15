
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CourseSubtitle extends StatelessWidget {
  const CourseSubtitle({super.key, required this.subTitle});
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return  Text(subTitle,
    style: AppStyles.style12,
    );
  }
}