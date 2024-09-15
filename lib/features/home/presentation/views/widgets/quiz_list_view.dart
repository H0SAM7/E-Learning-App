
import 'package:e_learing/core/models/quiz_model.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quiz_view_item.dart';
import 'package:flutter/material.dart';

class QuizListView extends StatelessWidget {
  const QuizListView({super.key, required this.quizModel});
final QuizModel quizModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context,ind){
        //return QuizViewItem(qussionModel: ,);
      });
  }
}