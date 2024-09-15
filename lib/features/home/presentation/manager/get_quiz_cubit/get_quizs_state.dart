part of 'get_quizs_cubit.dart';

@immutable
sealed class GetQuizsState {}

final class GetQuizsInitial extends GetQuizsState {}

final class GetQuizsLoading extends GetQuizsState {
}

final class GetQuizsSuccess extends GetQuizsState {
  final List<QuizModel> quizs;
  GetQuizsSuccess({required this.quizs});
}

final class GetQuizsFailure extends GetQuizsState {
  final String errMessage;
  GetQuizsFailure({required this.errMessage});
}
