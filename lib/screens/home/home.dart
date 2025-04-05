import 'package:flutter/material.dart';
import 'package:rpg_app/models/character_model.dart';
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
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  return StyledCard(character: characters[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
