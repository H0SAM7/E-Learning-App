import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/core/widgets/custom_alert.dart';
import 'package:e_learing/core/widgets/custom_back_ground_image.dart';
import 'package:e_learing/core/widgets/custom_progress_hud.dart';
import 'package:e_learing/features/auth/manager/auth_cubit/auth_cubit.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_send_button.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:e_learing/features/auth/presentation/widgets/google_button.dart';
import 'package:e_learing/bottom_navigator_bar.dart';
import 'package:e_learing/generated/l10n.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = 'LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? email, password;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushReplacementNamed(context, BottomNavigator.id);
        } else if (state is AuthFailure) {
          showCustomAlert(
            context: context,
            type: AlertType.error,
            title: s.error_title,
            description: state.errMessage,
            onPressed: () {
              Navigator.pop(context);
            },
            actionTitle: s.ok,
          );
        }
      },
      builder: (context, state) {
        return CustomProgressHUD(
          inAsyncCall: state is AuthLoading,
          child: AbsorbPointer(
            absorbing: state is AuthLoading,
            child: Scaffold(
              body: CustomBackGroundImage(
                size: MediaQuery.of(context).size,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            // SvgPicture.asset(Assets.imagesLoginLogo),
                            Image.asset(Assets.imagesLogin),

                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              S.of(context).Log_in,
                              style: AppStyles.poppinsStylebold20,
                            ),

                            CustomTextFrom(
                              hint: s.enter_email,
                              label: s.email,
                              onChanged: (value) {
                                email = value;
                              },
                            ),
                            CustomTextFrom(
                              hint: s.enter_password,
                              label: s.password,
                              isPasswordField: true,
                              onChanged: (value) {
                                password = value;
                              },
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, LoginView.id);
                                },
                                child: Text(
                                  s.forget_password,
                                  style: AppStyles.style12,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            CustomAuthButton(
                              label: s.send,
                              onTap: () async {
                                if (formKey.currentState!.validate()) {
                                  await BlocProvider.of<AuthCubit>(context)
                                      .login(
                                          email: email!, password: password!);
                                          await FirebaseMessaging.instance.subscribeToTopic('weather');

                                }
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            GoogleButton(
                              onTap: () async {
                                await BlocProvider.of<AuthCubit>(context)
                                    .signInWithGoogle();
                                    await FirebaseMessaging.instance.subscribeToTopic('weather');

                              },
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
