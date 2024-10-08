import 'package:e_learing/core/models/user_model.dart';
import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/core/widgets/custom_alert.dart';
import 'package:e_learing/core/widgets/custom_back_ground_image.dart';
import 'package:e_learing/core/widgets/custom_progress_hud.dart';
import 'package:e_learing/features/admin/add_user/add_user.dart';
import 'package:e_learing/features/auth/manager/auth_cubit/auth_cubit.dart';
import 'package:e_learing/features/auth/presentation/views/login_view.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_send_button.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:e_learing/features/auth/presentation/widgets/google_button.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:e_learing/generated/l10n.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
  String? email, password, phone, fatherPhone, name;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamed(context, HomeView.id);
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
                            Image.asset(Assets.imagesRegister),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              S.of(context).sign_in,
                              style: AppStyles.poppinsStylebold20,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              S.of(context).create_new_acc,
                              style: AppStyles.style12,
                            ),
                            CustomTextFrom(
                              hint: s.enter_name,
                              label: s.name,
                              onChanged: (value) {
                                name = value;
                              },
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
                            CustomTextFrom(
                              hint: s.enter_phone,
                              label: s.phone,
                              onChanged: (value) {
                                phone = value;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return s.complete_fields;
                                } else if (value.length != 11 &&
                                    value != fatherPhone) {
                                  return s.correct_number;
                                }
                                return null;
                              },
                            ),
                            CustomTextFrom(
                              hint: s.enter_father_phone,
                              label: s.father_phone,
                              onChanged: (value) {
                                fatherPhone = value;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return s.complete_fields;
                                } else if (value.length != 11 &&
                                    value != phone) {
                                  return s.correct_number;
                                }
                                return null;
                              },
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, LoginView.id);
                                },
                                child: Text(
                                  s.have_account,
                                  style: AppStyles.style12,
                                ),
                              ),
                            ),
                            CustomAuthButton(
                              label: s.send,
                              onTap: () async {
                                if (formKey.currentState!.validate()) {
                                  await BlocProvider.of<AuthCubit>(context)
                                      .register(
                                          email: email!, password: password!);
                                  await addUser(
                                    userModel: UserModel(
                                        userName: name!,
                                        email: email!,
                                        phone: phone!,
                                        fatherPhone: fatherPhone!),
                                  );
                                  await FirebaseMessaging.instance
                                      .subscribeToTopic('weather');
                                }
                              },
                            ),
                            const SizedBox(
                              height: 16,
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
