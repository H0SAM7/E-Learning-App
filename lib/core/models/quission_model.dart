import 'package:cloud_firestore/cloud_firestore.dart';

class QussionModel {
  final String quission;
  final String correctAnswer;

  final List<String> answers;

  QussionModel({
    required this.quission,
    required this.answers,
    required this.correctAnswer,
  });

  Map<String, dynamic> toMap() {
    return {
      'quission': quission,
      'answers': answers,
      'correctAnswer': correctAnswer
    };
  }

  factory QussionModel.fromDocument(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return QussionModel(
        quission: data['question'],
        answers: List<String>.from(data['answers']),
        correctAnswer: data['correctAnswer']);
  }
}
