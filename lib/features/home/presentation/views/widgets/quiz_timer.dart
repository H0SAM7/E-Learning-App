
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class QuizTimer extends StatelessWidget {
  const QuizTimer({super.key, this.onEnd, required this.quizTimer});
  final void Function()? onEnd;
  final int quizTimer;
  @override
  Widget build(BuildContext context) {
    return TimerCountdown(
      format: CountDownTimerFormat.minutesSeconds,
      endTime: DateTime.now().add( Duration(minutes: quizTimer)),
      onEnd: onEnd,
      timeTextStyle: const TextStyle(fontSize: 24),
    );
  }
}