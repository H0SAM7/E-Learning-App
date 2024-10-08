import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/features/Notifications/services/send_notifications_view.dart';
import 'package:e_learing/features/admin/views/add_course_view.dart';
import 'package:e_learing/features/admin/views/add_quiz_view.dart';
import 'package:e_learing/features/settings/presentation/views/widgets/items_setting.dart';
import 'package:e_learing/features/settings/presentation/views/widgets/separated_item_setting.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static String id = 'SettingsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: AppStyles.styleMeduim24,
        ),
       
      ),
      body: Column(
        children: [
          seperatedItem(title: 'Teacher Settings', color: Colors.black),
          ItemSetting(
            title: 'Add Course',
            prefixIcon: Icons.add,
            onTap: () {
              Navigator.pushNamed(context, AddCourseView.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          ItemSetting(
            title: 'Add Quiz',
            prefixIcon: Icons.quiz,
            onTap: () {
              Navigator.pushNamed(context, AddQuizView.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          ItemSetting(
            title: 'Send Notification',
            prefixIcon: Icons.notification_add,
            onTap: () {
              Navigator.pushNamed(context, NotifactionsSendView.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          seperatedItem(title: 'User Settings', color: Colors.black),
          ItemSetting(
            title: 'Log Out',
            prefixIcon: Icons.logout,
            onTap: () async {
              await FirebaseAuth.instance.signOut();
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
        ],
      ),
    );
  }
}
