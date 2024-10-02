import 'dart:developer';

import 'package:e_learing/bottom_navigator_bar.dart';
import 'package:e_learing/constants.dart';
import 'package:e_learing/core/helper/shared_prefence.dart';
import 'package:e_learing/core/models/quiz_model.dart';
import 'package:e_learing/core/widgets/custom_alert.dart';
import 'package:e_learing/core/widgets/custom_button.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quiz_list_view.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quiz_timer.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AttempQuizView extends StatefulWidget {
  const AttempQuizView({super.key});
  static String id = 'AttempQuizView';

  @override
  State<AttempQuizView> createState() => _AttempQuizViewState();
}

class _AttempQuizViewState extends State<AttempQuizView> {
  int totalDegree = 0;

  void updateDegree(int value) {
    setState(() {
      totalDegree += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizModel quizModel =
        ModalRoute.of(context)!.settings.arguments as QuizModel;

    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_sharp)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: QuizTimer(
                    quizTimer: quizModel.quizTime,
                    onEnd: () async {
                      await finshQuiz(quizModel, context);
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: QuizListView(
              onDegreeChanged: updateDegree,
              quizModel: quizModel,
            ),
          ),
          CustomButton(
            label: 'Send',
            color: blueColor,
            txtColor: Colors.white,
            onTap: () async {
              await finshQuiz(quizModel, context);

              setState(() {});
              log(totalDegree.toString());
            },
          )
        ],
      ),
    );
  }

  Future<void> finshQuiz(QuizModel quizModel, BuildContext context) async {
    await SharedPreference().setString(
      quizModel.quizTitle,
      totalDegree.toString(),
    );
    await SharedPreference().setBool(
      quizModel.quizTitle,
      true,
    );
    showCustomAlert(
        context: context,
        type: AlertType.success,
        title: 'Congratulations',
        description: 'Your Degree is  $totalDegree /  ${quizModel.quiz.length}',
        closeFunction: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            BottomNavigator.id, // Your target route name
            (Route<dynamic> route) => false, // This removes all previous routes
          );
        },
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            BottomNavigator.id, // Your target route name
            (Route<dynamic> route) => false, // This removes all previous routes
          );
        },
        actionTitle: 'Ok');
  }
}
