import 'package:flutter/material.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';
import 'package:rpg_app/theme.dart';

class StyledSectionDivider extends StatelessWidget {
  final String title;
  final String subtitle;

  const StyledSectionDivider(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    //   return Column(
    //     children: [
    //       Center(
    //         child: Icon(
    //           Icons.code,
    //           color: AppColors.primaryColor,
    //           size: 20,
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 4,
    //       ),
    //       Center(
    //         child: StyledTitle(title),
    //       ),
    //       Center(
    //         child: StyledText(subtitle),
    //       ),
    //       const SizedBox(
    //         height: 30,
    //       ),
    //     ],
    //   );
    // }
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.code,
            color: AppColors.primaryColor,
            size: 20,
          ),
          const SizedBox(
            height: 4,
          ),
          StyledTitle(title),
          StyledText(subtitle),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
