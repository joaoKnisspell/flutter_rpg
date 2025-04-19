import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rpg_app/models/character_model.dart';
import 'package:rpg_app/services/firestore_service.dart';

class CharacterStore extends ChangeNotifier {
  final List<CharacterModel> _characters = [];

  Future<void> getCharacters() async {
    if (characters.length == 0) {
      QuerySnapshot<CharacterModel> snapshot =
          await FirestoreService.getCharacters();

      for (var doc in snapshot.docs) {
        characters.add(doc.data());
      }
    }
  }

  void addCharacter(CharacterModel character) {
    FirestoreService.addCharacter(character);
    _characters.add(character);
    notifyListeners();
  }

  get characters => _characters;
}
