import 'package:e_learing/core/utils/app_images.dart';
import 'package:e_learing/features/home/presentation/views/widgets/notifi_message.dart';
import 'package:flutter/material.dart';

class NotificatinsView extends StatelessWidget {
  const NotificatinsView({super.key});
static String id='NotificatinsView';
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.imagesNotifications), // Replace with your image asset
            SizedBox(height: 20),
            Text(
              'No notification, yet!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
           NotificationMessage()
          ],
        ),
      ),
    );
  }
}
