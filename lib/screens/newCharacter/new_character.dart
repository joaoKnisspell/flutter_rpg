import 'package:flutter/material.dart';
import 'package:rpg_app/models/vocations_enum.dart';
import 'package:rpg_app/shared/styled_button.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _sloganController = TextEditingController();
  VocationsEnum selectedVocation = VocationsEnum.terminalRaider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const StyledTitle("Character Creation"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: AppColors.secondaryAccent,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                const StyledSectionDivider(
                    title: 'Welcome New Player.',
                    subtitle: 'Create a name & slogan for your character.'),
                TextField(
                  controller: _nameController,
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
                  controller: _sloganController,
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
                StyledVocationCard(
                  vocation: VocationsEnum.algoWizard,
                  isSelected: selectedVocation == VocationsEnum.algoWizard,
                  onTap: () {
                    setState(() {
                      selectedVocation = VocationsEnum.algoWizard;
                    });
                  },
                ),
                StyledVocationCard(
                  vocation: VocationsEnum.codeJunkie,
                  isSelected: selectedVocation == VocationsEnum.codeJunkie,
                  onTap: () {
                    setState(() {
                      selectedVocation = VocationsEnum.codeJunkie;
                    });
                  },
                ),
                StyledVocationCard(
                  vocation: VocationsEnum.terminalRaider,
                  isSelected: selectedVocation == VocationsEnum.terminalRaider,
                  onTap: () {
                    setState(() {
                      selectedVocation = VocationsEnum.terminalRaider;
                    });
                  },
                ),
                StyledVocationCard(
                  vocation: VocationsEnum.uxNinja,
                  isSelected: selectedVocation == VocationsEnum.uxNinja,
                  onTap: () {
                    setState(() {
                      selectedVocation = VocationsEnum.uxNinja;
                    });
                  },
                ),
                const StyledSectionDivider(
                  title: 'GOOD LUCK.',
                  subtitle: 'And enjoy the journey...',
                ),
                StyledButton(
                  onPressed: () {},
                  text: 'Create Character',
                )
              ],
            ),
          ),
        ));
  }
}
