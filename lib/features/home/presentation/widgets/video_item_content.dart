
import 'package:e_learing/features/video/views/video_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoItemContent extends StatelessWidget {
  const VideoItemContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, VideoView.id);
      },
      child: ListTile(
        leading:IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.square)),
        title:  Text('1- what is Dart',
        style: TextStyle(
          fontFamily: GoogleFonts.akatab().fontFamily,
        ),
        ),
      ),
    );
  }
}