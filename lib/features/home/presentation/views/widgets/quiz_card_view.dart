import 'package:e_learing/core/models/quiz_model.dart';
import 'package:e_learing/features/home/presentation/views/attemp_quiz_view.dart';
import 'package:flutter/material.dart';

class QuizCardView extends StatelessWidget {
  const QuizCardView({super.key, this.onTap, required this.quizModel});
  final QuizModel quizModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, AttempQuizView.id,arguments: quizModel);
      },
      minTileHeight: 100,
      leading: Icon(Icons.quiz),
      title: Text(quizModel.quizTitle),
      trailing: Text('11 : 11'),
    );
  }
}

