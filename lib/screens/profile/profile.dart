import 'package:flutter/material.dart';
import 'package:rpg_app/models/character_model.dart';
import 'package:rpg_app/shared/widgets/stats_table.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';
import 'package:rpg_app/theme.dart';

class Profile extends StatelessWidget {
  final CharacterModel character;

  const Profile({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle(character.name),
      ),
      body: Container(
        color: AppColors.secondaryAccent,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              color: AppColors.secondaryColor,
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/vocations/${character.vocation.image}',
                    width: 120,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledTitle(character.vocation.name),
                      StyledText(character.vocation.description),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Center(
                child: Icon(
                  Icons.code,
                  color: AppColors.primaryAccent,
                ),
              ),
            ),
            Container(
              color: AppColors.secondaryColor,
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const StyledTitle('Slogan'),
                      StyledText(character.slogan),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const StyledTitle('Weapon of choice'),
                      StyledText(character.vocation.weapon),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const StyledTitle('Unique Ability'),
                      StyledText(character.vocation.ability),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            StatsTable(
              character: character,
            ),
          ],
        ),
      ),
    );
  }
}
