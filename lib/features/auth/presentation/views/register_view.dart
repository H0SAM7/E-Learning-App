import 'dart:developer';
import 'package:e_learing/features/auth/data/auth_repo_impl.dart';
import 'package:e_learing/features/auth/presentation/views/login_view.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_send_button.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  static String id = 'RegisterView';

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
     String? email,password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            // CustomTextFrom(
            //   hint: 'Enter your Name',
            //   label: 'Name',
            //   onChanged: (value) {},
            // ),
            CustomTextFrom(
              hint: 'Enter your email',
              label: 'Email',
              onChanged: (value) {
                email=value;
              },
            ),
            CustomTextFrom(
              hint: 'Enter your password',
              label: 'Password',
              onChanged: (value) {
                password=value;
              },
            ),
            // CustomTextFrom(
            //   hint: 'Enter your phone',
            //   label: 'Phone',
            //   onChanged: (value) {},
            // ),
            // CustomTextFrom(
            //   hint: 'Enter your Father Phone',
            //   label: 'Father Phone',
            //   onChanged: (value) {},
            // ),
            CustomSendButton(
              label: 'send',
              onTap: () {
                try {
                  AuthRepoImpl().register(email: email!, password: password!);
                  Navigator.pushNamed(context, HomeView.id);
                } catch (e) {
                  log('Errrrr');
                }
              },
            ),
            IconButton(onPressed: (){
              Navigator.pushNamed(context, LoginView.id);

            }, icon: Icon(Icons.agriculture_rounded))
          ],
        ),
      ),
    );
  }
}
