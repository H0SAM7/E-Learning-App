import 'package:e_learing/core/models/course_model.dart';
import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/features/video/views/video_view.dart';
import 'package:flutter/material.dart';

class SectionContent extends StatelessWidget {
  const SectionContent({
    super.key,
    required this.courseModel,
    required this.lessonIndex,
  });
  final CourseModel courseModel;
  final int lessonIndex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, VideoView.id, arguments: {
          'courseModel': courseModel,
          'lessonIndex': lessonIndex,
        });
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.9),
        ),
        child: ListTile(
          leading: const Icon(Icons.play_arrow),
          //contentPadding: EdgeInsets.zero,
          title: Text(
            'Section $lessonIndex',
            style: AppStyles.poppinsStylebold20,
          ),

          subtitle: Text(
            '1/12 | 2h',
            style: AppStyles.poppinsStylebold20,
          ),
          //    trailing: const Icon(Icons.keyboard_arrow_down),
        ),
      ),
    );
  }
}







































// import 'package:e_learing/core/utils/app_styles.dart';
// import 'package:e_learing/features/home/presentation/widgets/video_item_content.dart';
// import 'package:flutter/material.dart';

// class SectionContent extends StatefulWidget {
//   const SectionContent({
//     super.key, required this.lessonTitle,
//   });
// final String lessonTitle;
//   @override
//   State<SectionContent> createState() => _SectionContentState();
// }

// class _SectionContentState extends State<SectionContent> {
//   bool customTileExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.sizeOf(context).width,
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(.9),
//       ),
//       child: ExpansionTile(
//         //contentPadding: EdgeInsets.zero,
//         title: Text(
//         ,
//           style: AppStyles.poppinsStylebold20,
//         ),

//         subtitle: Text(
//           '1/12 | 2h',
//           style: AppStyles.poppinsStylebold20,
//         ),
//         //    trailing: const Icon(Icons.keyboard_arrow_down),
//         trailing: Icon(
//           customTileExpanded
//               ?Icons.keyboard_arrow_up
//               :  Icons.keyboard_arrow_down
//         ),
//         children: const [
//           VideoItemContent(),
   
   
//         ],
//         onExpansionChanged: (bool expanded) {
//           setState(() {
//             customTileExpanded = expanded;
//           });
//         },
//       ),
//     );
//   }
// }
