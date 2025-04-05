import 'package:rpg_app/models/vocations_enum.dart';

class SkillModel {
  final String id;
  final String name;
  final String image;
  final VocationsEnum vocation;

  const SkillModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.vocation});
}

final List<SkillModel> allSkills = [
  // algo wizard skills
  const SkillModel(
      id: '1',
      name: 'Brute Force Bolt',
      image: 'bf_bolt.jpg',
      vocation: VocationsEnum.algoWizard),
  const SkillModel(
      id: '2',
      name: 'Recursive Wave',
      image: 'r_wave.jpg',
      vocation: VocationsEnum.algoWizard),
  const SkillModel(
      id: '3',
      name: 'Hash Beam',
      image: 'h_beam.jpg',
      vocation: VocationsEnum.algoWizard),
  const SkillModel(
      id: '4',
      name: 'Backtrack',
      image: 'backtrack.jpg',
      vocation: VocationsEnum.algoWizard),

  // terminal raider skills
  const SkillModel(
      id: '5',
      name: 'Lethal Touch',
      image: 'l_touch.jpg',
      vocation: VocationsEnum.terminalRaider),
  const SkillModel(
      id: '6',
      name: 'Sudo Blast',
      image: 's_blast.jpg',
      vocation: VocationsEnum.terminalRaider),
  const SkillModel(
      id: '7',
      name: 'Full Clear',
      image: 'f_clear.jpg',
      vocation: VocationsEnum.terminalRaider),
  const SkillModel(
      id: '8',
      name: 'Support Shell',
      image: 's_shell.jpg',
      vocation: VocationsEnum.terminalRaider),

  // code junkie skills
  const SkillModel(
      id: '9',
      name: 'Infinite Loop',
      image: 'i_loop.jpg',
      vocation: VocationsEnum.codeJunkie),
  const SkillModel(
      id: '10',
      name: 'Type Cast',
      image: 't_cast.jpg',
      vocation: VocationsEnum.codeJunkie),
  const SkillModel(
      id: '11',
      name: 'Encapsulate',
      image: 'encapsulate.jpg',
      vocation: VocationsEnum.codeJunkie),
  const SkillModel(
      id: '12',
      name: 'Copy & Paste',
      image: 'c_paste.jpg',
      vocation: VocationsEnum.codeJunkie),

  // ux ninja skills
  const SkillModel(
      id: '13',
      name: 'Gamify',
      image: 'gamify.jpg',
      vocation: VocationsEnum.uxNinja),
  const SkillModel(
      id: '14',
      name: 'Heat Map',
      image: 'h_map.jpg',
      vocation: VocationsEnum.uxNinja),
  const SkillModel(
      id: '15',
      name: 'Wireframe',
      image: 'wireframe.jpg',
      vocation: VocationsEnum.uxNinja),
  const SkillModel(
      id: '16',
      name: 'Dark Pattern',
      image: 'd_pattern.jpg',
      vocation: VocationsEnum.uxNinja),
];
