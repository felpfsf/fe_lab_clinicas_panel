import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_panel/src/pages/panel/widgets/main_attendance_panel.dart';
import 'package:fe_lab_clinicas_panel/src/pages/panel/widgets/password_tile.dart';
import 'package:flutter/material.dart';

class PanelPage extends StatefulWidget {
  const PanelPage({super.key});

  @override
  State<PanelPage> createState() => _PanelPageState();
}

class _PanelPageState extends State<PanelPage> {
  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: LabClinicasAppbar(),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(minHeight: sizeOf.height),
          color: LabClinicasTheme.secondaryBackground,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: sizeOf.width * .4,
                    child: const MainAttendancePanel(
                      passwordLabel: 'Senha anterior',
                      password: 'BG5898',
                      deskNumber: '03',
                      labelColor: LabClinicasTheme.primaryLabel,
                      buttonColor: LabClinicasTheme.secondaryElement,
                    ),
                  ),
                  SizedBox(
                    width: sizeOf.width * .4,
                    child: const MainAttendancePanel(
                      passwordLabel: 'Chamando senha',
                      password: 'BG5898',
                      deskNumber: '04',
                      labelColor: LabClinicasTheme.secondaryElement,
                      buttonColor: LabClinicasTheme.primaryLabel,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Divider(color: LabClinicasTheme.primaryLabel),
              const SizedBox(height: 32),
              const Text(
                'Ùltimos chamados',
                style: LabClinicasTheme.titleSmallWebStyle,
              ),
              const SizedBox(height: 16),
              const Wrap(
                runAlignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  PasswordTile(password: 'PF0909', deskNumber: '01'),
                  PasswordTile(password: 'PF0909', deskNumber: '01'),
                  PasswordTile(password: 'PF0909', deskNumber: '01'),
                  PasswordTile(password: 'PF0909', deskNumber: '01'),
                  PasswordTile(password: 'PF0909', deskNumber: '01'),
                  PasswordTile(password: 'PF0909', deskNumber: '01'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
