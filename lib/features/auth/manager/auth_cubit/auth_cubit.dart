import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:e_learing/core/errors/failure.dart';
import 'package:e_learing/core/helper/auth_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> register(
      {required String email, required String password}) async {
    emit(AuthLoading());
    try {
      final userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        if (!user.emailVerified) {
          await user.sendEmailVerification();
          log('Verification email sent. Please check your inbox.');
        }
        bool eVerified = await waitForEmailVerification(user);
        await checkEmailVerification(user);

        if (eVerified) {
          // await firestore.collection('users').doc(user.uid).set({
          //   'uid': user.uid,
          //   'email': email,
          //  // 'username': username,
          //   // Add other fields as needed
          // });
          emit(AuthSuccess());

          log('User account created successfully.');
        } else {
          // If email verification fails, delete the user and throw an exception
          await user.delete();
          emit(AuthFailure(errMessage: 'Email verification failed.'));
        }
      }
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

