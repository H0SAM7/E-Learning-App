import 'package:e_learing/core/models/quission_model.dart';
import 'package:flutter/material.dart';

class QuizViewItem extends StatelessWidget {
  const QuizViewItem({super.key, required this.qussionModel});
  final QussionModel qussionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          qussionModel.quission,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'A ${qussionModel.answers[0]}',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'B ${qussionModel.answers[1]}',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'C ${qussionModel.answers[2]}',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'D ${qussionModel.answers[3]}',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
