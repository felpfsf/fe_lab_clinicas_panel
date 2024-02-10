import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

class PasswordTile extends StatelessWidget {
  const PasswordTile({
    super.key,
    required this.password,
    required this.deskNumber,
  });

  final String password;
  final String deskNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: BoxDecoration(
        color: LabClinicasTheme.primaryElement,
        border: Border.all(color: LabClinicasTheme.primaryLabel),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            password,
            style: LabClinicasTheme.subTitleStyle.copyWith(
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            'Guichê $deskNumber',
            style: LabClinicasTheme.bodyBold18Style.copyWith(
              color: LabClinicasTheme.primaryLabel,
            ),
          ),
        ],
      ),
    );
  }
}
