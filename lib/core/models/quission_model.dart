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
        quission: data['quission'],
        answers: List<String>.from(data['answers']),
        correctAnswer: data['correctAnswer']);
  }
  factory QussionModel.fromMap(Map<String, dynamic> data) {
    return QussionModel(
      quission: data['quission'], // Ensure this matches Firestore field name
      answers: List<String>.from(data['answers'] ?? []), // Handle null safely
      correctAnswer: data['correctAnswer'],
    );
  }
}
