import 'package:e_learing/core/models/quiz_model.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quiz_card_view.dart';
import 'package:flutter/material.dart';

class QuizCardLListView extends StatelessWidget {
  const QuizCardLListView({super.key, required this.quizModels});
final  List<QuizModel> quizModels;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quizModels.length,
      itemBuilder: (context, ind) {
        return QuizCardView(quizModel: quizModels[ind]);
      });
  }
}
