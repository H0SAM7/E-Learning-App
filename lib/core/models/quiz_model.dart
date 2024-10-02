import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learing/core/models/quission_model.dart';

class QuizModel {
  final List<QussionModel> quiz;
  final String quizTitle;
    final int quizTime;

  QuizModel({required this.quizTime, required this.quizTitle, required this.quiz});

  Map<String, dynamic> toMap() {
    return {
      'quiz': quiz.map((q) => q.toMap()).toList(),
      'quizTitle': quizTitle,
    };
  }

  factory QuizModel.fromDocument(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return QuizModel(
      quizTitle: data['quizTitle'],
      quizTime:data['quizTime'],
      quiz: List<QussionModel>.from((data['quiz'] as List<dynamic>)
          .map((item) => QussionModel.fromDocument(item))),
    );
  }
  factory QuizModel.fromMap(Map<String, dynamic> data) {
    return QuizModel(
        quizTitle: data['quizTitle'],
         quizTime:data['quizTime'],
        quiz: List<QussionModel>.from((data['quiz'] as List<dynamic>)
            .map((item) => QussionModel.fromMap(item))));
  }
}
