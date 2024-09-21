import 'package:flutter/material.dart';

class QuizCardView extends StatelessWidget {
  const QuizCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
   
      leading: Icon(Icons.quiz),
      title: Text('Quiz Time '),
      trailing: Text('11 : 11'),
    );
  }
}