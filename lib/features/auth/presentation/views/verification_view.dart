import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});
  static String id = 'VerificationView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image.asset(Assets.imagesVerification)),
          SvgPicture.asset(Assets.imagesVerifiedCheck),
          const SizedBox(height: 50,),
          Expanded(
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                'Please Go to Your Email ,\n and click on the link for verification',
                style: AppStyles.poppinsStylebold20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
