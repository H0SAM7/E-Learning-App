
import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/generated/l10n.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff006A36)),
        child: Center(
          child: Row(
            children: [
               Image.asset(Assets.imagesGoogle,width: 50,height: 40,) ,
               Text(
                S.of(context).sign_with_google,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}