import 'dart:developer';

import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/core/widgets/custom_button.dart';
import 'package:e_learing/features/auth/presentation/views/register_view.dart';
import 'package:e_learing/features/auth/presentation/views/verification_view.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});
  static String id = 'StartView';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            Expanded(child: SvgPicture.asset(Assets.imagesLoginLogo)),
              
            Expanded(child: SvgPicture.asset(Assets.imagesWelcome)),
             
            CustomButton(
              label: 'Start',
              color: const Color(0xff006A36),
              txtColor: Colors.white,
             onTap: () {
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
          if (user == null) {
            Navigator.pushNamed(context, RegisterView.id);
            log('User is currently signed out!');
          } else {
            if (user.emailVerified) {
              Navigator.pushNamed(context, HomeView.id);
              log('User is signed in!');
            } else if (!user.emailVerified) {
              Navigator.pushNamed(context, VerificationView.id);
            } else {
              Navigator.pushNamed(context, RegisterView.id);
            }
          }
        });
      },
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
