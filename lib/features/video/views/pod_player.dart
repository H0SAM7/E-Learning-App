import 'package:pod_player/pod_player.dart';
import 'package:flutter/material.dart';

class PlayVideoFromYoutube extends StatefulWidget {
  const PlayVideoFromYoutube({super.key,  this.lessonLink});
  static String id = 'PlayVideoFromYoutube';
  final String? lessonLink;
  @override
  State<PlayVideoFromYoutube> createState() => _PlayVideoFromYoutubeState();
}

class _PlayVideoFromYoutubeState extends State<PlayVideoFromYoutube> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
       widget.lessonLink??'',
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
      PodVideoPlayer(
        controller: controller,
      )
    ;
  }
}
