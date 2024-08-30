import 'package:e_learing/features/video/widgets/video_desc.dart';
import 'package:e_learing/features/video/widgets/video_section.dart';
import 'package:flutter/material.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});
  static String id = 'VideoView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height * .4,
              child: const VideoViewSection()),
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
