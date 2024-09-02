import 'package:e_learing/core/widgets/custom_alert.dart';
import 'package:e_learing/core/widgets/custom_loading_indecator.dart';
import 'package:e_learing/core/widgets/custom_progress_hud.dart';
import 'package:e_learing/core/widgets/loading_dialog.dart';
import 'package:e_learing/features/auth/manager/auth_cubit/auth_cubit.dart';
import 'package:e_learing/features/auth/presentation/views/login_view.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_send_button.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  static String id = 'RegisterView';

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return 
      BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamed(context, HomeView.id);
          } else if (state is AuthFailure) {
            showCustomAlert(
              context: context,
              type: AlertType.error,
              title: 'Error',
              description: state.errMessage,
              onPressed: () {
                Navigator.pop(context);
              },
              actionTitle: 'ok',
            );
          } 
        },
        builder: (context, state) {
          return CustomProgressHUD(
            inAsyncCall: state is AuthLoading,
            child: AbsorbPointer(
              absorbing: state is AuthLoading,
              child: Scaffold(
                body: SingleChildScrollView(
                  child: Form(
                    key: formKey,
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
                          onTap: () async {
                            if (formKey.currentState!.validate()) {
                              await BlocProvider.of<AuthCubit>(context)
                                  .register(email: email!, password: password!);
                            }
                          },
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, LoginView.id);
                          },
                          icon: const Icon(Icons.login),
                        ),
                      
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      )
    ;
  }
}
