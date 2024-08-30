import 'package:e_learing/core/utils/app_styles.dart';
import 'package:e_learing/features/home/widgets/video_item_content.dart';
import 'package:flutter/material.dart';

class SectionContent extends StatefulWidget {
  const SectionContent({
    super.key,
  });

  @override
  State<SectionContent> createState() => _SectionContentState();
}

class _SectionContentState extends State<SectionContent> {
  bool customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.9),
      ),
      child: ExpansionTile(
        //contentPadding: EdgeInsets.zero,
        title: Text(
          'Section 1:introduction',
          style: AppStyles.poppinsStylebold20,
        ),

        subtitle: Text(
          '1/12 | 2h',
          style: AppStyles.poppinsStylebold20,
        ),
        //    trailing: const Icon(Icons.keyboard_arrow_down),
        trailing: Icon(
          customTileExpanded
              ?Icons.keyboard_arrow_up
              :  Icons.keyboard_arrow_down
        ),
        children: const [
          VideoItemContent(),
          VideoItemContent(),
          VideoItemContent(),
          VideoItemContent(),
          VideoItemContent(),
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            customTileExpanded = expanded;
          });
        },
      ),
    );
  }
}
