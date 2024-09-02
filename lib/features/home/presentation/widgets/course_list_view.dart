import 'package:e_learing/features/home/presentation/widgets/course_item.dart';
import 'package:flutter/material.dart';

class CoursesListView extends StatelessWidget {
  const CoursesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 8, childAspectRatio: 1 / 1.5),
      // scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: CourseItemView(),
        );
      },
    );
  }
}
