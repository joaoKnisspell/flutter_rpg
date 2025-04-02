import 'package:rpg_app/models/stats_mixin.dart';

class CharacterModel with Stats {
  final int id;
  final String name;
  final String slogan;

  CharacterModel({
    required this.id,
    required this.name,
    required this.slogan,
  });

  bool _isFav = false;

  void toggleIsFav() {
    _isFav = !_isFav;
  }
}
