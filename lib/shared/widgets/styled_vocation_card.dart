import 'package:flutter/material.dart';
import 'package:rpg_app/models/vocations_enum.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';

class StyledVocationCard extends StatelessWidget {
  final VocationsEnum vocation;
  final bool isSelected;
  final void Function() onTap;

  const StyledVocationCard(
      {super.key,
      required this.vocation,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Card(
          color: Colors.transparent,
          child: Row(
            children: [
              Image.asset(
                'assets/img/vocations/${vocation.image}',
                color: !isSelected
                    ? Colors.red.withOpacity(0.5)
                    : Colors.transparent,
                colorBlendMode:
                    !isSelected ? BlendMode.modulate : BlendMode.color,
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
      ),
    );
  }
}
