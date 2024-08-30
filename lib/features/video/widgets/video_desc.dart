import 'package:e_learing/features/home/widgets/course_title.dart';
import 'package:e_learing/features/home/widgets/sub_title_course.dart';
import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CourseTitle(),
        CourseSubtitle(),
      ],
    );
  }
}