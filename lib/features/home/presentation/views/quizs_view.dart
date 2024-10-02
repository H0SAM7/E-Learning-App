import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/features/home/presentation/manager/get_quiz_cubit/get_quizs_cubit.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quiz_card_view.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quizCardListView.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quiz_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Quizes extends StatelessWidget {
  const Quizes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "My Quizes",
          style: AppStyles.styleMeduim24,
        ),
      ),
      body: BlocBuilder<GetQuizsCubit, GetQuizsState>(
        builder: (context, state) {
          if (state is GetQuizsSuccess) {
            if (state.quizs.isNotEmpty) {
              return Expanded(
                child: QuizCardLListView(
                  quizModels: state.quizs,
                ),
              );
            } else {
              Center(
                  child: Text(
                'No Quiz Available Now',
                style: TextStyle(fontSize: 25),
              ));
            }
          } 
          //Expanded(child: QuizListView()),
           return Center(
              child: Text(
            'No Quiz Available Now',
            style: TextStyle(fontSize: 25),
          ));
        }
        
      ),
    );
  }
}
