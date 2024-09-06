import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/features/auth/presentation/views/register_view.dart';
import 'package:e_learing/features/auth/presentation/widgets/timer_widget.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:e_learing/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});
  static String id = 'VerificationView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffececec),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //    Expanded(child: Image.asset(Assets.imagesVerification)),
          //  SvgPicture.asset(Assets.imagesVerifiedCheck),
          Expanded(child: Image.asset(Assets.imagesVerification)),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                S.of(context).check_inbox,
                style: AppStyles.poppinsStylebold20,
              ),
            ),
          ),
          TimerWidget(
            onEnd: () {
              Navigator.pushReplacementNamed(
                  context,
                  FirebaseAuth.instance.currentUser!.emailVerified
                      ? HomeView.id
                      : RegisterView.id);
            },
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
