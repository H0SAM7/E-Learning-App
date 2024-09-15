
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CoursePrice extends StatelessWidget {
  const CoursePrice({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: AppStyles.poppinsStylebold20,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          'Free',
          style: AppStyles.style12.copyWith(
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }
}
