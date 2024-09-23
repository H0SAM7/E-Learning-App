import 'package:e_learing/constants.dart';
import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/features/home/presentation/manager/get_courses_cubit/get_courses_cubit.dart';
import 'package:e_learing/features/home/presentation/views/widgets/course_list_view.dart';
import 'package:e_learing/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:e_learing/features/home/presentation/views/widgets/custom_notifi_button.dart';
import 'package:e_learing/features/home/presentation/views/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCoursesCubit(),
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          backgroundColor: blueColor,
          centerTitle: true,
          title: Image.asset(
            Assets.imagesLogo2,
            height: 80,
          ),
        ),
        body: const Column(
          children: [
            SizedBox(
                height: 220, width: double.infinity, child: DetailsSection()),
            Expanded(child: CoursesListView()),
            // Expanded(child: CoursesListView()),
          ],
        ),
      ),
    );
  }
}

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  Assets.imagesBackgroundCard,
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                'Hello ,',
                style: AppStyles.styleMeduim24.copyWith(color: Colors.white),
              ),
              subtitle: Text('Hosam Adel',
                  style: AppStyles.styleMeduim24.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300)),
              trailing: CustomNotificationButton(
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchTextField(),
          ],
        ),
      ),
    );
  }
}
