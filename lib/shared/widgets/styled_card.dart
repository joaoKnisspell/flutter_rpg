import 'package:flutter/material.dart';
import 'package:rpg_app/models/character_model.dart';
import 'package:rpg_app/screens/profile/profile.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';
import 'package:rpg_app/theme.dart';

class StyledCard extends StatelessWidget {
  final CharacterModel character;

  const StyledCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Profile(character: character),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Image.asset(
                'assets/img/vocations/${character.vocation.image}',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledTitle(character.name),
                  StyledText(character.vocation.title),
                ],
              ),
              const Expanded(child: SizedBox()),
              Icon(
                color: AppColors.textColor,
                Icons.arrow_forward,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
