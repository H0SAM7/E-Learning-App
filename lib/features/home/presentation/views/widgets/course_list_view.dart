import 'package:e_learing/features/home/presentation/manager/get_courses_cubit/get_courses_cubit.dart';
import 'package:e_learing/features/home/presentation/views/widgets/course_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesListView extends StatefulWidget {
  const CoursesListView({super.key});

  @override
  State<CoursesListView> createState() => _CoursesListViewState();
}

class _CoursesListViewState extends State<CoursesListView> {
  @override
  void initState() {
  BlocProvider.of<GetCoursesCubit>(context).getAllCourses();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCoursesCubit, GetCoursesState>(
        builder: (context, state) {
      if (state is GetCoursesSuccess) {
        return GridView.builder(
          physics: const BouncingScrollPhysics(),

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
          ),
          // scrollDirection: Axis.horizontal,
          itemCount: state.courses.length,
          itemBuilder: (context, index) {
            // log(BlocProvider.of<GetCoursesCubit>(context)
            //     .courses
            //     .length
            //     .toString());
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CourseItemView(courseModel: state.courses[index]
                  // BlocProvider.of<GetCoursesCubit>(context).courses[index],
                  ),
            );
          },
        );
      } else {
        return const SizedBox();
      }
    });
  }
}
