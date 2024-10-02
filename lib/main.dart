import 'package:e_learing/bloc_observer.dart';
import 'package:e_learing/core/routes/app_routes.dart';
import 'package:e_learing/features/admin/manager/admin_cubit/admin_cubit.dart';
import 'package:e_learing/features/auth/manager/auth_cubit/auth_cubit.dart';
import 'package:e_learing/features/home/presentation/manager/get_quiz_cubit/get_quizs_cubit.dart';
import 'package:e_learing/firebase_options.dart';
import 'package:e_learing/generated/l10n.dart';
import 'package:e_learing/system_cubits/lang_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserever();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    badge: true,
    sound: true,
  );
 
  runApp(const ELearing());
}

class ELearing extends StatelessWidget {
  const ELearing({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => AdminCubit(),
        ),
        BlocProvider(
          create: (context) => LanguageCubit(),
        ),
         BlocProvider(
          create: (context) => GetQuizsCubit()..getQuizs(),
        ),
      ],
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
                // fontFamily: isArabic(context)
                //     ? GoogleFonts.inter().fontFamily
                //     : GoogleFonts.poppins().fontFamily,
                ),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''),
              Locale('ar', ''),
            ],
            locale: context.watch<LanguageCubit>().state,
            routes:AppRoutes.routes,
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.initialRoute,
          );
        },
      ),
    );
  }
}

bool isArabic(BuildContext context) {

  return Localizations.localeOf(context).languageCode == 'ar';

}
