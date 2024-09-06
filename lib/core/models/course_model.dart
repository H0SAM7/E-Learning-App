import 'package:cloud_firestore/cloud_firestore.dart';

class CourseModel {
  final String title;
  final String subTitle;
  final String price;
  final String creator;
  final String image;

  final List<String> lessons;

  // Constructor with all fields as required positional arguments
  CourseModel(
    this.lessons,
    this.price,
    this.creator,
    this.title,
    this.subTitle,
    this.image,
  );

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'subTitle': subTitle,
      'price': price,
      'creator': creator,
      'lessons': lessons,
    };
  }

  factory CourseModel.fromDocuments(DocumentSnapshot docs) {
    Map<String, dynamic> data = docs.data() as Map<String, dynamic>;
    return CourseModel(
      List<String>.from(data['lessons']), // Extract lessons as a List<String>
      data['price'],
      data['creator'],
      data['title'],
      data['subTitle'],
      data['image'],
    );
  }
}
