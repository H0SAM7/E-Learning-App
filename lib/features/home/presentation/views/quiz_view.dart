
import 'package:e_learing/features/home/presentation/views/widgets/quiz_list_view.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quiz_view_item.dart';
import 'package:flutter/material.dart';

class Quizes extends StatelessWidget {
  const Quizes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       //   Center(child: Text('No Quiz Available Now',style: TextStyle(fontSize: 25),)),
    // Expanded(child: QuizListView())
        ],
      ),
    );
  }
}
