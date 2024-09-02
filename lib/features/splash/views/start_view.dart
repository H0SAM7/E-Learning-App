import 'dart:developer';

import 'package:e_learing/features/auth/presentation/views/register_view.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});
  static String id = 'StartView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: ()  {
             FirebaseAuth.instance.authStateChanges().listen((User? user) {
              if (user == null) {
                Navigator.pushNamed(context, RegisterView.id);
                log('User is currently signed out!');
              } else {
                Navigator.pushNamed(context, HomeView.id);
                log('User is signed in!');
              }
            });
          },
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                ),
              )
            ],
          )),
    );
  }
}
