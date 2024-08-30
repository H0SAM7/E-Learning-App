
import 'package:e_learing/features/home/widgets/course_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
static String id='HomeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(child: CoursesListView()),
          // Expanded(child: CoursesListView()),
        ],
      ),
    );
  }
}
