import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

class ButtonBox extends StatelessWidget {
  const ButtonBox({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: LabClinicasTheme.primaryLabel,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text.toUpperCase(),
        style: LabClinicasTheme.titleSmallBoldStyle.copyWith(
          fontSize: 48,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
