
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
     title,
      style: AppStyles.poppinsStylebold20,
      
    );
  }
}
