mixin Stats {
  int _points = 10;
  int _health = 10;
  int _attack = 10;
  int _defense = 10;
  int _skills = 10;

  void incrementStat(String stat) {
    if (_points > 0) {
      if (stat == "health") {
        _health++;
        _points--;
      }

      if (stat == "attack") {
        _attack++;
        _points--;
      }

      if (stat == "defense") {
        _defense++;
        _points--;
      }

      if (stat == "skills") {
        _skills++;
        _points--;
      }
    }
  }

  void decrementState(String stat) {
    if (stat == 'health' && _health > 5) {
      _health--;
      _points++;
    }

    if (stat == 'attack' && _attack > 5) {
      _attack--;
      _points++;
    }

    if (stat == 'defense' && _defense > 5) {
      _defense--;
      _points++;
    }

    if (stat == 'skills' && _skills > 5) {
      _skills--;
      _points++;
    }
  }
}
