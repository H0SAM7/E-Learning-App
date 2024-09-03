// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class YoutubeVideoPlayer extends StatefulWidget {
//   const YoutubeVideoPlayer({super.key});
//   static String id = 'YoutubeVideoPlayer';

//   @override
//   State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
// }

// class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
//   late YoutubePlayerController youtubePlayerController;
//   bool _isFullscreen = false; // Track fullscreen state

//   @override
//   void initState() {
//     super.initState();
//     youtubePlayerController = YoutubePlayerController(
//       initialVideoId: convertToUrl(
//         'https://www.youtube.com/watch?v=UIkPFdrKM8g&list=PLAZupmcAxGzl0buT3k2sxDE0ZjkSqjVRN&index=7',
//       ),
//       flags: const YoutubePlayerFlags(
//         mute: false,
//         autoPlay: false,
//         disableDragSeek: false,
//         loop: false,
//         isLive: false,
//         forceHD: false,
//         enableCaption: true,
//       ),
//     )..addListener(listener);
//   }

//   void listener() {
//     if (youtubePlayerController.value.isFullScreen && !_isFullscreen) {
//       setState(() {
//         _isFullscreen = true;
//       });
//     } else if (!youtubePlayerController.value.isFullScreen && _isFullscreen) {
//       setState(() {
//         _isFullscreen = false;
//       });
//     }
//   }

//   @override
//   void deactivate() {
//     youtubePlayerController.pause();
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     youtubePlayerController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return YoutubePlayerBuilder(
  
//       player: YoutubePlayer(
//         controller: youtubePlayerController,
//         showVideoProgressIndicator: true,
//       ),
//       builder: (context, player) {
//         return Center(child: player);
//       },
//     );
//   }
// }

// String convertToUrl(String url) {
//   return YoutubePlayer.convertUrlToId(url) ?? '';
// }
