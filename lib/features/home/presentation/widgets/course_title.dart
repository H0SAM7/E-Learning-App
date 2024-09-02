
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Flutter & Dart for Beginners',
      style: AppStyles.poppinsStylebold20,
      
    );
  }
}
