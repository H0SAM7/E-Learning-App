import 'package:e_learing/core/models/course_model.dart';
import 'package:e_learing/features/video/views/pod_player.dart';
import 'package:e_learing/features/video/widgets/video_desc.dart';
import 'package:flutter/material.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});
  static String id = 'VideoView';

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final CourseModel courseModel = args['courseModel'];
    final int lessonIndex = args['lessonIndex'];

    return Scaffold(
      appBar: AppBar(
    
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .4,
                child:   PlayVideoFromYoutube(lessonLink: courseModel.lessons[lessonIndex-1],),
            ),
            VideoDescription(courseModel: courseModel,),
         //  const VideoComments()
          ],
        ),
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
