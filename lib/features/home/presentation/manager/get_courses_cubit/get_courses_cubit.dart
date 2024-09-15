import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learing/core/errors/failure.dart';
import 'package:e_learing/core/models/course_model.dart';
import 'package:e_learing/features/admin/add_user/add_user.dart';
import 'package:meta/meta.dart';
part 'get_courses_state.dart';

class GetCoursesCubit extends Cubit<GetCoursesState> {
  GetCoursesCubit() : super(GetCoursesInitial());
  Future<List<CourseModel>?> getAllCourses() async {
    emit(GetCoursesLoading());
    try {
      QuerySnapshot querySnapshot = await firestore.collection('courses').get();
      List<CourseModel> courses = querySnapshot.docs
          .map((doc) => CourseModel.fromDocuments(doc))
          .toList();
      emit(GetCoursesSuccess(courses: courses));
    } catch (e) {
      emit(
        GetCoursesFailure(
          errMessage: FirebaseFailure.fromFirebaseException(e as Exception)
              .errMessage
              .toString(),
        ),
      );
      log('Error adding discount: $e');
    }
    return null;
  }
  
}
