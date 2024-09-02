import 'package:e_learing/features/home/presentation/widgets/section_content.dart';
import 'package:flutter/material.dart';

class ContentListView extends StatelessWidget {
  const ContentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, index) {
          return const SectionContent();
        });
  }
}
