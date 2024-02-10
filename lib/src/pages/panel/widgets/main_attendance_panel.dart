import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_panel/src/pages/panel/widgets/button_box.dart';
import 'package:flutter/material.dart';

class MainAttendancePanel extends StatelessWidget {
  const MainAttendancePanel({
    super.key,
    required this.passwordLabel,
    required this.password,
    required this.deskNumber,
    required this.labelColor,
    required this.buttonColor,
  });

  final String passwordLabel;
  final String password;
  final String deskNumber;

  final Color labelColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: LabClinicasTheme.primaryElement,
          border: Border.all(color: LabClinicasTheme.primaryLabel),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              passwordLabel,
              style: LabClinicasTheme.titleWebStyle.copyWith(
                color: labelColor,
                fontSize: 48,
              ),
            ),
            const SizedBox(height: 8),
            ButtonBox(text: password),
            const SizedBox(height: 24),
            Text(
              'Guichê',
              style: LabClinicasTheme.titleWebStyle.copyWith(
                color: labelColor,
                fontSize: 48,
              ),
            ),
            const SizedBox(height: 8),
            ButtonBox(text: deskNumber),
          ],
        ),
      ),
    );
  }
}
