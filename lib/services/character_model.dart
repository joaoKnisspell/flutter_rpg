import 'package:flutter/material.dart';
import 'package:rpg_app/models/character_model.dart';
import 'package:rpg_app/models/vocations_enum.dart';

class CharacterStore extends ChangeNotifier {
  final List<CharacterModel> _characters = [
    CharacterModel(
        id: '1',
        name: 'Klara',
        vocation: VocationsEnum.algoWizard,
        slogan: 'Kapumf!'),
    CharacterModel(
        id: '2',
        name: 'Jonny',
        vocation: VocationsEnum.codeJunkie,
        slogan: 'Light me up...'),
    CharacterModel(
        id: '3',
        name: 'Crimson',
        vocation: VocationsEnum.terminalRaider,
        slogan: 'Fire in the hole!'),
    CharacterModel(
        id: '4',
        name: 'Shaun',
        vocation: VocationsEnum.uxNinja,
        slogan: 'Alright then gang.'),
  ];

  void addCharacter(CharacterModel character) {
    _characters.add(character);
    notifyListeners();
  }

  get characters => _characters;
}
