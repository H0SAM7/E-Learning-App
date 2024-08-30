
import 'package:e_learing/features/home/views/course_content_view.dart';
import 'package:e_learing/features/home/widgets/course_image.dart';
import 'package:e_learing/features/home/widgets/course_price.dart';
import 'package:e_learing/features/home/widgets/course_title.dart';
import 'package:e_learing/features/home/widgets/sub_title_course.dart';
import 'package:flutter/material.dart';

class CourseItemView extends StatelessWidget {
  const CourseItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, CourseContentView.id);

      },
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            
            child: CourseImage()),
          SizedBox(
            height: 8,
          ),
          CourseTitle(),
          SizedBox(
            height: 8,
          ),
          CourseSubtitle(),
          SizedBox(
            height: 8,
          ),
          CoursePrice(),
        ],
      ),
    );
  }
}
