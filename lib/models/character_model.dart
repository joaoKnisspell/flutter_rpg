import 'package:rpg_app/models/skill_model.dart';
import 'package:rpg_app/models/stats_mixin.dart';
import 'package:rpg_app/models/vocations_enum.dart';

class CharacterModel with Stats {
  final String id;
  final String name;
  final String slogan;
  final VocationsEnum vocation;
  final Set<SkillModel> skill = {};

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
    skill.clear();
    skill.add(newSkill);
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
