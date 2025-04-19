import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rpg_app/models/character_model.dart';

class FirestoreService {
  static final ref =
      FirebaseFirestore.instance.collection('characters').withConverter(
            fromFirestore: CharacterModel.fromFirestore,
            toFirestore: (CharacterModel c, _) => c.toFirestore(),
          );

  static Future<void> addCharacter(CharacterModel character) async {
    await ref.doc(character.id).set(character);
  }

  static Future<QuerySnapshot<CharacterModel>> getCharacters() {
    return ref.get();
  }
}
