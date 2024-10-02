import 'package:e_learing/features/Notifications/views/notifi_view.dart';
import 'package:e_learing/features/home/presentation/views/attemp_quiz_view.dart';
import 'package:e_learing/features/home/presentation/views/quiz_result_view.dart';
import 'package:flutter/widgets.dart';
import 'package:e_learing/features/admin/views/add_course_view.dart';
import 'package:e_learing/features/admin/views/add_quiz_view.dart';
import 'package:e_learing/features/auth/presentation/views/login_view.dart';
import 'package:e_learing/features/auth/presentation/views/register_view.dart';
import 'package:e_learing/features/auth/presentation/views/verification_view.dart';
import 'package:e_learing/features/home/presentation/views/course_content_view.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:e_learing/bottom_navigator_bar.dart';
import 'package:e_learing/features/splash/views/start_view.dart';
import 'package:e_learing/features/video/views/pod_player.dart';
import 'package:e_learing/features/video/views/video_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static String? initialRoute = BottomNavigator.id;
  static Map<String, Widget Function(BuildContext)> routes = {
    HomeView.id: (context) => const HomeView(),
    CourseContentView.id: (context) => const CourseContentView(),
    VideoView.id: (context) => const VideoView(),
    //  YoutubeVideoPlayer.id: (context) => const YoutubeVideoPlayer(),
    //  VideoViewSection.id:(context)=>VideoViewSection(),
    RegisterView.id: (context) => const RegisterView(),
    LoginView.id: (context) => const LoginView(),
    StartView.id: (context) => const StartView(),
    VerificationView.id: (context) => const VerificationView(),
    AddCourseView.id: (context) => const AddCourseView(),
    PlayVideoFromYoutube.id: (context) => const PlayVideoFromYoutube(),
    BottomNavigator.id: (context) => const BottomNavigator(),
    AddQuizView.id: (context) => const AddQuizView(),
    NotifiView.id: (context) => const NotifiView(),
    AttempQuizView.id: (context) => const AttempQuizView(),
        QuizResultView.id: (context) => const QuizResultView(),

  };
}
