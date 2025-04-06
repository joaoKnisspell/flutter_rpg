import 'package:flutter/material.dart';
import 'package:rpg_app/models/vocations_enum.dart';
import 'package:rpg_app/shared/widgets/styled_section_divider.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';
import 'package:rpg_app/shared/widgets/styled_vocation_card.dart';
import 'package:rpg_app/theme.dart';

class NewCharacter extends StatefulWidget {
  const NewCharacter({super.key});

  @override
  State<NewCharacter> createState() => _NewCharacterState();
}

class _NewCharacterState extends State<NewCharacter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("Character Creation"),
      ),
      body: Container(
        color: AppColors.secondaryAccent,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            const StyledSectionDivider(
                title: 'Welcome New Player.',
                subtitle: 'Create a name & slogan for your character.'),
            TextField(
              style: TextStyle(
                color: AppColors.textColor,
              ),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                label: StyledHeading('Character Name'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(
                color: AppColors.textColor,
              ),
              decoration: const InputDecoration(
                label: StyledHeading('Character Slogan'),
                prefixIcon: Icon(Icons.textsms_rounded),
              ),
            ),
            const SizedBox(height: 30),
            const StyledSectionDivider(
              title: 'Choose a Vocation',
              subtitle: 'This determines your available skills.',
            ),
            const StyledVocationCard(vocation: VocationsEnum.algoWizard),
            const StyledVocationCard(vocation: VocationsEnum.codeJunkie),
            const StyledVocationCard(vocation: VocationsEnum.terminalRaider),
            const StyledVocationCard(vocation: VocationsEnum.uxNinja),
          ],
        ),
      ),
    );
  }
}
