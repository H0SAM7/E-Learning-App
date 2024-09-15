import 'package:e_learing/core/models/course_model.dart';
import 'package:e_learing/features/home/presentation/views/widgets/course_title.dart';
import 'package:e_learing/features/home/presentation/views/widgets/sub_title_course.dart';
import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({super.key, required this.courseModel});
final CourseModel courseModel;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CourseTitle(title: courseModel.title,),
        CourseSubtitle(subTitle: courseModel.subTitle,),
      ],
    );
  }
}