import 'package:e_learing/features/home/presentation/manager/get_quiz_cubit/get_quizs_cubit.dart';
import 'package:e_learing/features/home/presentation/views/widgets/quiz_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizListView extends StatefulWidget {
  const QuizListView({super.key, });

  @override
  State<QuizListView> createState() => _QuizListViewState();
}

class _QuizListViewState extends State<QuizListView> {
  @override
  void initState() {
getData();
    super.initState();
  }

  void getData() async{
  await  BlocProvider.of<GetQuizsCubit>(context).getQuizs();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetQuizsCubit, GetQuizsState>(builder: (context, state) {
      if (state is GetQuizsSuccess) {
        return ListView.builder(
            itemCount: state.quizs.length, 
            itemBuilder: (context, ind) {
              return QuizViewItem(
                qussionModel: state.quizs[ind].quiz[ind],
              );
            });
      } else {
        return const Center(
            child: Text(
          'No Quiz Available Now',
          style: TextStyle(fontSize: 25),
        ));
      }
    });
  }
}
