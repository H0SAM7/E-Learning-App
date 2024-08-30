import 'package:e_learing/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CourseContentHeader extends StatelessWidget {
  const CourseContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.9),
      ),
      child: Text('Course Content', style: AppStyles.poppinsStylebold20),
    );
  }
}
