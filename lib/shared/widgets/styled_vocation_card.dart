import 'package:flutter/material.dart';
import 'package:rpg_app/models/vocations_enum.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';

class StyledVocationCard extends StatelessWidget {
  final VocationsEnum vocation;

  const StyledVocationCard({super.key, required this.vocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Card(
        color: Colors.transparent,
        child: Row(
          children: [
            Image.asset(
              'assets/img/vocations/${vocation.image}',
              width: 80,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledHeading(vocation.title),
                StyledText(vocation.description)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
