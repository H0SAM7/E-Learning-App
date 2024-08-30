import 'package:flutter/material.dart';

class CourseImage extends StatelessWidget {
  const CourseImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/test.jpg'),
        ),
      ),
    );
  }
}
