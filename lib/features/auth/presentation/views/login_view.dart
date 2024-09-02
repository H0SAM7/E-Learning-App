import 'dart:developer';
import 'package:e_learing/core/widgets/custom_alert.dart';
import 'package:e_learing/features/auth/data/auth_repo_impl.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_send_button.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = 'LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomTextFrom(
              hint: 'Enter your email',
              label: 'Email',
              onChanged: (value) {
                email = value;
              },
            ),
            CustomTextFrom(
              hint: 'Enter your password',
              label: 'Password',
              onChanged: (value) {
                password = value;
              },
            ),
            CustomSendButton(
              label: 'send',
              onTap: () async {
                try {
                  await AuthRepoImpl()
                      .login(email: email!, password: password!);
                  Navigator.pushReplacementNamed(
                    context,
                    HomeView.id,
                  );
                } catch (e) {}
              },
            ),
            IconButton(
              onPressed: () {
                showCustomAlert(
                    context: context,
                    type: AlertType.error,
                    title: 'Error',
                    description: 'there was error',
                    onPressed: () {
                       Navigator.pop(context);
                    },
                    actionTitle: 'Ok');
              },
              icon: const Icon(Icons.error),
            )
          ],
        ),
      ),
    );
  }
}
