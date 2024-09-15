import 'dart:developer';
import 'package:e_learing/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = blueColor;
    Color textColor = Colors.white;

    return Drawer(
      surfaceTintColor: blueColor,
      shadowColor: blueColor,
      backgroundColor: backgroundColor,
      child: DrawerListView(textColor: textColor),
    );
  }
}

class DrawerListView extends StatelessWidget {
  const DrawerListView({
    super.key,
    required this.textColor,
  });

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
 
        Container(
          height: 60,
        ),
    
        ListTile(
            textColor: textColor,
            leading: const Icon(
              Icons.facebook,
              color: Colors.blue,
            ),
            title: Text(
              'Facebook',
              style: TextStyle(color: textColor),
            ),
            onTap: () async {
              final Uri uri0 =
                  Uri.parse('https://www.facebook.com/tarik.geldin');
              await launchUrlMethod(uri0);
            })
            ,
        ListTile(
            textColor: textColor,
            leading: const Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
            ),
            title: Text(
              "What's App",
              style: TextStyle(color: textColor),
            ),
            onTap: () async {
              final Uri uri1 = Uri.parse('https://wa.link/0m7fth');
              await launchUrlMethod(uri1);
            }),
        ListTile(
            textColor: textColor,
            leading: const Icon(
              FontAwesomeIcons.telegram,
              color: Colors.blue,
            ),
            title: Text(
              "Telegram",
              style: TextStyle(color: textColor),
            ),
            onTap: () {}),
      ],
    );
  }
}

Future<void> launchUrlMethod(Uri uri) async {
  //const url = 'https://www.facebook.com/funnybabysohag';

  if (!await canLaunchUrl(uri)) {
    final bool launched =
        await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched) {
      log('Could not launch $uri');
    }
  } else {
    log('Cannot launch URL: $uri');
  }
}
