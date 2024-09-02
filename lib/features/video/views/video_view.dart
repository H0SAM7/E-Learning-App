import 'package:e_learing/features/video/views/pod_player.dart';
import 'package:e_learing/features/video/views/youtube_video_player.dart';
import 'package:e_learing/features/video/widgets/video_desc.dart';
import 'package:flutter/material.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});
  static String id = 'VideoView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .4,
            child:  VideoPlayerScreen(),
          ),
          const VideoDescription(),
        ],
      ),
    );
  }
}

class VideoComments extends StatelessWidget {
  const VideoComments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
