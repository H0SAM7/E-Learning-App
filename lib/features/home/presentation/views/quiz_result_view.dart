import 'package:flutter/material.dart';

class QuizResultView extends StatelessWidget {
  const QuizResultView({super.key});
static String id='QuizResultView';
  @override
  Widget build(BuildContext context) {
        final String totalDegree=
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}