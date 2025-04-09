import 'package:flutter/material.dart';
import 'package:rpg_app/models/character_model.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';
import 'package:rpg_app/theme.dart';

class StatsTable extends StatefulWidget {
  final CharacterModel character;

  const StatsTable({super.key, required this.character});

  @override
  State<StatsTable> createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryColor,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: widget.character.points > 0
                ? Colors.yellow
                : AppColors.textColor,
          ),
          const SizedBox(
            width: 10,
          ),
          const StyledText('Stats points available: '),
          const Expanded(child: SizedBox()),
          StyledTitle(widget.character.points.toString()),
        ],
      ),
    );
  }
}
