import 'package:e_learing/constants.dart';
import 'package:e_learing/core/models/quission_model.dart';
import 'package:e_learing/core/models/quiz_model.dart';
import 'package:e_learing/core/widgets/custom_alert.dart';
import 'package:e_learing/core/widgets/custom_button.dart';
import 'package:e_learing/core/widgets/loading_dialog.dart';
import 'package:e_learing/features/admin/manager/admin_cubit/admin_cubit.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddQuizView extends StatefulWidget {
  const AddQuizView({super.key});
  static String id = 'AddQuizView';

  @override
  State<AddQuizView> createState() => _AddQuizViewState();
}

class _AddQuizViewState extends State<AddQuizView> {
  final TextEditingController createorController = TextEditingController();
  GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  final TextEditingController qussionController = TextEditingController();
  final TextEditingController answerA = TextEditingController();
  final TextEditingController answerB = TextEditingController();
  final TextEditingController answerC = TextEditingController();
  final TextEditingController answerD = TextEditingController();
  final TextEditingController correctAnswer = TextEditingController();
  List<QussionModel> quissions = [];

  @override
  void dispose() {
    qussionController.dispose();
    answerA.dispose();
    answerB.dispose();
    answerC.dispose();
    answerD.dispose();
    correctAnswer.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminCubit, AdminState>(
      listener: (context, state) {
        if (state is AdminLoading) {
          showLoadingDialog(context);
        } else if (state is AdminSuccess) {
          Navigator.pop(context);
        } else if (state is AdminFailure) {
          showCustomAlert(
              context: context,
              type: AlertType.error,
              title: 'Error',
              description: state.errMessage,
              onPressed: () {
                Navigator.pop(context);
              },
              actionTitle: 'Ok');
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: fromKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextFrom(
                  label: ' The Quission',
                  hint: 'Enter your Quission',
                  controller: qussionController,
                ),
                CustomTextFrom(
                  label: 'Option A',
                  hint: 'Enter your Quission',
                  controller: answerA,
                ),
                CustomTextFrom(
                    label: 'Option B',
                    hint: 'Enter your Quission',
                    controller: answerB),
                CustomTextFrom(
                    label: 'Option C',
                    hint: 'Enter your Quission',
                    controller: answerC),
                CustomTextFrom(
                    label: 'Option D',
                    hint: 'Enter your Quission',
                    controller: answerD),
                CustomTextFrom(
                  label: 'Correct Option',
                  hint: 'Write A or B or C or D',
                  controller: correctAnswer,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  label: 'qussion done',
                  color: blueColor,
                  txtColor: Colors.white,
                  onTap: () {
                    if (fromKey.currentState!.validate()) {
                      quissions.add(QussionModel(
                          quission: qussionController.text,
                          answers: [
                            answerA.text,
                            answerB.text,
                            answerC.text,
                            answerD.text,
                          ],
                          correctAnswer: correctAnswer.text));
                      clearMethod();
                    }
                  },
                ),
                const SizedBox(
                  height: 26,
                ),
                CustomButton(
                  label: 'Submit Quiz',
                  color: blueColor,
                  txtColor: Colors.white,
                  onTap: () async {
                    if (quissions.isNotEmpty) {
                      await BlocProvider.of<AdminCubit>(context)
                          .addQuiz(quizModel: QuizModel(quiz: quissions));
                      quissions.clear();
                    } else {
                      showCustomAlert(
                          context: context,
                          type: AlertType.warning,
                          title: 'there was wrong',
                          description: 'Not Allowed upload Empty Quiz',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          actionTitle: 'Ok');
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void clearMethod() {
    qussionController.clear();
    answerA.clear();
    answerB.clear();
    answerC.clear();
    answerD.clear();
    correctAnswer.clear();
  }
}
