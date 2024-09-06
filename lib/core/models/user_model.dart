import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String userName, email, phone, fatherPhone;

  UserModel({
    required this.userName,
    required this.email,
    required this.phone,
    required this.fatherPhone,
  });


  Map<String, dynamic> toMap() {
    return {
      'userName': userName,

      'email': email,
      'phone': phone,
      'fatherPhone': fatherPhone,
   
    };
  }
  factory UserModel.fromDocuments(DocumentSnapshot docs) {
    Map<String, dynamic> data = docs.data() as Map<String, dynamic>;
    return UserModel(
      userName: data['userName'],
      email: data['email'],
      phone: data['phone'],
      fatherPhone: data['fatherPhone'],
    );
  }
}
