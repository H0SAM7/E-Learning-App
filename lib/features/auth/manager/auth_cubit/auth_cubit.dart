import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_learing/core/errors/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> register(
      {required String email, required String password}) async {
    emit(AuthLoading());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(AuthSuccess());
      log("Created done");
    } catch (e) {
      emit(AuthFailure(
          errMessage: FirebaseFailure.fromFirebaseException(e as Exception)
              .errMessage
              .toString()));
    }
  }

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(AuthSuccess());
    } catch (e) {
      emit(
        AuthFailure(
          errMessage: FirebaseFailure.fromFirebaseException(e as Exception)
              .errMessage
              .toString(),
        ),
      );
    }
  }
}
