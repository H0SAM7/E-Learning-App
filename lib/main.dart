import 'package:e_learing/features/home/views/course_content_view.dart';
import 'package:e_learing/features/home/views/home_view.dart';
import 'package:e_learing/features/video/views/video_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ELearing());
}

class ELearing extends StatelessWidget {
  const ELearing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        CourseContentView.id: (context) => const CourseContentView(),
        VideoView.id: (context) => const VideoView(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
    );
  }
}
