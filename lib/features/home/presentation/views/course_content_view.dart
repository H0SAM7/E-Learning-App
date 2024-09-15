import 'package:e_learing/core/models/course_model.dart';
import 'package:e_learing/features/home/presentation/views/widgets/content_list_view.dart';
import 'package:e_learing/features/home/presentation/views/widgets/course_content_header.dart';
import 'package:flutter/material.dart';

class CourseContentView extends StatelessWidget {
  const CourseContentView({super.key, });
  static String id = 'CourseContentView';

  @override
  Widget build(BuildContext context) {
      final CourseModel courseModel = ModalRoute.of(context)!.settings.arguments as CourseModel;

    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CourseContentHeader(),
            const SizedBox(
              height: 10,
            ),
          Expanded(child: ContentListView(courseModel: courseModel,)),
          // Expanded(child: ContentVideosListView()),
          ],
        ),
      ),
    );
  }
}

