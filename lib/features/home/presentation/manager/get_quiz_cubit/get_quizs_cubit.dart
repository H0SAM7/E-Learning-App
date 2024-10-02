import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learing/core/errors/failure.dart';
import 'package:e_learing/core/models/course_model.dart';
import 'package:e_learing/core/models/quiz_model.dart';
import 'package:e_learing/features/admin/add_user/add_user.dart';
import 'package:meta/meta.dart';
part 'get_quizs_state.dart';

class GetQuizsCubit extends Cubit<GetQuizsState> {
  GetQuizsCubit() : super(GetQuizsInitial());

  Future<List<CourseModel>?> getQuizs() async {
    emit(GetQuizsLoading());
    try {
      QuerySnapshot querySnapshot = await firestore.collection('Quiz').get();
      // List<QuizModel> quizes =
      //     querySnapshot.docs.map((doc) => QuizModel.fromDocument(doc)).toList();
      List<QuizModel> quizes = querySnapshot.docs
          .map((doc) => QuizModel.fromMap(doc.data()! as Map<String, dynamic>))
          .toList();

      emit(
        GetQuizsSuccess(quizs: quizes),
      );
    } catch (e) {
      emit(
        GetQuizsFailure(
          errMessage: FirebaseFailure.fromFirebaseException(e as Exception)
              .errMessage
              .toString(),
        ),
      );
      log('Error get quiz: $e');
    }
    return null;
  }
}
