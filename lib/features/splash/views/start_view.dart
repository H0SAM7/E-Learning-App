import 'dart:developer';
import 'package:e_learing/constants.dart';
import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/core/widgets/custom_back_ground_image.dart';
import 'package:e_learing/core/widgets/custom_button.dart';
import 'package:e_learing/features/auth/presentation/views/register_view.dart';
import 'package:e_learing/features/auth/presentation/views/verification_view.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:e_learing/features/home/presentation/views/widgets/bottom_navigator_bar.dart';
import 'package:e_learing/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});
  static String id = 'StartView';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final s = S.of(context);
    return Scaffold(
      body: CustomBackGroundImage(
        size: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  Expanded(child: SvgPicture.asset(Assets.imagesStart)),
            // Expanded(child: SvgPicture.asset(Assets.imagesLetsGo)),
            SizedBox(
              height: size.height * .1,
            ),
            Expanded(
              child: Image.asset(Assets.imagesStart),
            ),
            Expanded(
                child: Text(
              s.learn_any_time,
              style: AppStyles.styleMeduim24,
            )),
            CustomButton(
              label: s.start,
              color: orangeColor,
              txtColor: Colors.white,
              onTap: () {
                FirebaseAuth.instance.authStateChanges().listen((User? user) {
                  if (user == null) {
                    Navigator.pushNamed(context, RegisterView.id);
                    log('User is currently signed out!');
                  } else {
                    if (user.emailVerified) {
                      Navigator.pushReplacementNamed(context, BottomNavigator.id);
                      log('User is signed in!');
                    } else if (!user.emailVerified) {
                      Navigator.pushReplacementNamed(
                          context, VerificationView.id);
                    } else {
                      Navigator.pushReplacementNamed(context, RegisterView.id);
                    }
                  }
                });
              },
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
