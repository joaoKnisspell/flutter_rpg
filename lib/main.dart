import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_app/screens/home/home.dart';
import 'package:rpg_app/services/character_model.dart';
import 'package:rpg_app/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CharacterStore(),
    child: MaterialApp(
      theme: primaryTheme,
      home: const Home(),
    ),
  ));
}
