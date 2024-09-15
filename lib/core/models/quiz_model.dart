import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learing/core/models/quission_model.dart';

class QuizModel {
  final List<QussionModel> quiz;

  QuizModel({required this.quiz});

  Map<String, dynamic> toMap() {
    return {
      'quiz': quiz.map((q) => q.toMap()).toList(),
    };
  }

  factory QuizModel.fromDocument(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return QuizModel(
      quiz: List<QussionModel>.from(
        (data['quiz'] as List<dynamic>).map((item) => QussionModel.fromDocument(item as DocumentSnapshot))
      ),
    );
  }
}
