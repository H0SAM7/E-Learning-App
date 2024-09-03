import 'package:e_learing/bloc_observer.dart';
import 'package:e_learing/features/auth/manager/auth_cubit/auth_cubit.dart';
import 'package:e_learing/features/auth/presentation/views/login_view.dart';
import 'package:e_learing/features/auth/presentation/views/register_view.dart';
import 'package:e_learing/features/auth/presentation/views/verification_view.dart';
import 'package:e_learing/features/home/presentation/views/course_content_view.dart';
import 'package:e_learing/features/home/presentation/views/home_view.dart';
import 'package:e_learing/features/splash/views/start_view.dart';
import 'package:e_learing/features/video/views/video_view.dart';
import 'package:e_learing/features/video/views/youtube_video_player.dart';
import 'package:e_learing/firebase_options.dart';
import 'package:e_learing/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserever();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarColor: Colors.blueAccent,
  //   ),
  // );
  runApp(const ELearing());
}

class ELearing extends StatelessWidget {
  const ELearing({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routes: {
          HomeView.id: (context) => const HomeView(),
          CourseContentView.id: (context) => const CourseContentView(),
          VideoView.id: (context) => const VideoView(),
          YoutubeVideoPlayer.id: (context) => const YoutubeVideoPlayer(),
          //  VideoViewSection.id:(context)=>VideoViewSection(),
          RegisterView.id: (context) => const RegisterView(),
          LoginView.id: (context) => const LoginView(),
          StartView.id: (context) => const StartView(),
                    VerificationView.id: (context) => const VerificationView(),

        },
        debugShowCheckedModeBanner: false,
        initialRoute: VerificationView.id,
      ),
    );
  }
}
