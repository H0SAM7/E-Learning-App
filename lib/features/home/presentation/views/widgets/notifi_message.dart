
import 'package:e_learing/constants.dart';
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class NotificationMessage extends StatelessWidget {
  const NotificationMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(16,),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text('Mr Hosam:',style: AppStyles.poppinsStylebold20.copyWith(color: Colors.white),),
             const Text('Welcome to Altarek Paltform',style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}