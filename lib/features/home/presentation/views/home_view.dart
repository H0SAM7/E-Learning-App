import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/features/home/presentation/manager/get_courses_cubit/get_courses_cubit.dart';
import 'package:e_learing/features/home/presentation/views/widgets/course_list_view.dart';
import 'package:e_learing/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCoursesCubit(),
      child: const Scaffold(
        body: Column(
          children: [
      
            Expanded(child: CoursesListView()),
            // Expanded(child: CoursesListView()),
          ],
        ),
      ),
    );
  }
}
