
import 'package:e_learing/features/admin/views/add_course_view.dart';
import 'package:e_learing/features/home/presentation/widgets/course_list_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
static String id='HomeView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(actions: [
           IconButton(icon: const Icon(Icons.add_a_photo_rounded), onPressed: (){
          Navigator.pushNamed(context, AddCourseView.id);

        }),
        IconButton(icon: const Icon(Icons.search), onPressed: ()async{
          await FirebaseAuth.instance.signOut();


        }),
      ],),
      body: const Column(
        children: [
          Expanded(child: CoursesListView()),
          // Expanded(child: CoursesListView()),
        ],
      ),
    );
  }
}
