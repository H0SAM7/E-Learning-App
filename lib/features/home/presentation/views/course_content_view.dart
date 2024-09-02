import 'package:e_learing/features/home/presentation/widgets/content_list_view.dart';
import 'package:e_learing/features/home/presentation/widgets/course_content_header.dart';
import 'package:flutter/material.dart';

class CourseContentView extends StatelessWidget {
  const CourseContentView({super.key});
  static String id = 'CourseContentView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CourseContentHeader(),
            SizedBox(
              height: 10,
            ),
          Expanded(child: ContentListView()),
          // Expanded(child: ContentVideosListView()),
          ],
        ),
      ),
    );
  }
}

