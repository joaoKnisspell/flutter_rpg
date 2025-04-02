import 'package:flutter/material.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';
import 'package:rpg_app/theme.dart';

class StyledCard extends StatelessWidget {
  final String name;

  const StyledCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            StyledText(name),
            const Expanded(child: SizedBox()),
            Icon(
              color: AppColors.textColor,
              Icons.arrow_forward,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
