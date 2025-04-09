import 'package:flutter/material.dart';
import 'package:rpg_app/shared/widgets/styled_text.dart';
import 'package:rpg_app/theme.dart';

class StyledButton extends StatelessWidget {
  final void Function() onPressed;

  final String text;

  const StyledButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        onPressed();
      },
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.all(20),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
      child: StyledHeading(
        text,
      ),
    );
  }
}
