// import 'package:flutter/material.dart';
// import 'package:better_player/better_player.dart';



// class VideoPlayerScreen extends StatefulWidget {
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }

// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//  late BetterPlayerController _betterPlayerController;

//   @override
//   void initState() {
//     super.initState();
//     BetterPlayerDataSource dataSource = BetterPlayerDataSource(
//       BetterPlayerDataSourceType.network,
//       "https://www.youtube.com/watch?v=q4QTSu9KHKI",
//     );
//     _betterPlayerController = BetterPlayerController(
//       BetterPlayerConfiguration(),
//       betterPlayerDataSource: dataSource,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 
    
//       Center(
//         child: BetterPlayer(
//           controller: _betterPlayerController,
//         ),
//       )
//     ;
//   }

//   @override
//   void dispose() {
//     _betterPlayerController.dispose();
//     super.dispose();
//   }
// }
