 import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learing/core/models/user_model.dart';
  FirebaseFirestore firestore = FirebaseFirestore.instance;

Future<void> addUser({required UserModel userModel}) async {
    try {
      await firestore.collection('users').add(userModel.toMap());
    
      log('adding done');
    } catch (e) {
      // emit(
      //   AdminFailure(
      //     errMessage: FirebaseFailure.fromFirebaseException(e as Exception)
      //         .errMessage
      //         .toString(),
      //   ),
      // );
      log('Error adding discount: $e');
    }
  }