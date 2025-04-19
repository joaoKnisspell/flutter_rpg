import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_app/models/character_model.dart';
import 'package:rpg_app/screens/newCharacter/new_character.dart';
import 'package:rpg_app/services/character_store.dart';
import 'package:rpg_app/shared/styled_button.dart';
import 'package:rpg_app/shared/widgets/styled_card.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';
import 'package:rpg_app/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("Your Characters"),
      ),
      body: Container(
        color: AppColors.secondaryAccent,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Consumer<CharacterStore>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.characters.length,
                    itemBuilder: (_, index) {
                      return StyledCard(character: value.characters[index]);
                    },
                  );
                },
              ),
            ),
            StyledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const NewCharacter(),
                  ),
                );
              },
              text: 'Create Character',
            )
          ],
        ),
      ),
    );
  }
}
