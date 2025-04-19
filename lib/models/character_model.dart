import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rpg_app/models/skill_model.dart';
import 'package:rpg_app/models/stats_mixin.dart';
import 'package:rpg_app/models/vocations_enum.dart';

class CharacterModel with Stats {
  final String id;
  final String name;
  final String slogan;
  final VocationsEnum vocation;
  final Set<SkillModel> skills = {};

  CharacterModel({
    required this.id,
    required this.name,
    required this.slogan,
    required this.vocation,
  });

  bool _isFav = false;

  bool get isFav => _isFav;

  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void addSkill(SkillModel newSkill) {
    skills.clear();
    skills.add(newSkill);
  }

  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'slogan': slogan,
      'vocation': vocation.toString(),
      'isFav': _isFav,
      'skills': skills.map((s) => s.id).toList(),
      'stats': statsAsMap,
    };
  }

  factory CharacterModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data()!;

    CharacterModel character = CharacterModel(
      id: data['id'],
      name: data['name'],
      slogan: data['slogan'],
      vocation: VocationsEnum.values
          .firstWhere((v) => v.toString() == data['vocation']),
    );

    if (data['isFav'] == true) {
      character.toggleIsFav();
    }

    for (String id in data['skills']) {
      SkillModel curSkill = allSkills.firstWhere((s) => s.id == id);
      character.addSkill(curSkill);
    }

    return character;
  }
}

List<CharacterModel> characters = [
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
