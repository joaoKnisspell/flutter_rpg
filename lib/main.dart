import 'package:flutter/material.dart';
// import 'package:rpg_app/screens/home/home.dart';
import 'package:rpg_app/screens/newCharacter/new_character.dart';
import 'package:rpg_app/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: primaryTheme,
    home: const NewCharacter(),
  ));
}
