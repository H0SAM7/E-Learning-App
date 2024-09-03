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
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(width: .2),
            borderRadius: BorderRadius.circular(10),
            //color: orangeColor,
            ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(Assets.imagesGoogle,width: 50,height: 40,) ,
               Text(
                textAlign: TextAlign.center,
                S.of(context).sign_with_google,
                style: const TextStyle(
                 // color: Colors.white,
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