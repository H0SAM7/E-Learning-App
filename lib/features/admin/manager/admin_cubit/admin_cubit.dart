import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learing/core/errors/failure.dart';
import 'package:e_learing/core/models/course_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
part 'admin_state.dart';

class AdminCubit extends Cubit<AdminState> {
  AdminCubit() : super(AdminInitial());

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addCourse({required CourseModel courseModel}) async {
    emit(AdminLoading());
    try {
      await firestore.collection('courses').add(courseModel.toMap());
      emit(AdminSuccess());
      log('adding done');
    } catch (e) {
      emit(
        AdminFailure(
          errMessage: FirebaseFailure.fromFirebaseException(e as Exception)
              .errMessage
              .toString(),
        ),
      );
      log('Error adding discount: $e');
    }
  }
  
final ImagePicker _picker = ImagePicker(); // Initialize picker
final FirebaseStorage _storage = FirebaseStorage.instance; // Initialize storage
  Future<String?> uploadImage(String fileName,) async {
    try {
      final XFile? pickedFile =
          await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        File file = File(pickedFile.path);

        Reference storageRef =
            _storage.ref().child('Courses/CousreImage/$fileName');

        UploadTask uploadTask = storageRef.putFile(file);

        TaskSnapshot snapshot = await uploadTask.whenComplete(() => {});

        String downloadUrl = await snapshot.ref.getDownloadURL();

        return downloadUrl;
      }
    } catch (e) {
      log('Error uploading image: $e');
    }
    return null;
  }

}
