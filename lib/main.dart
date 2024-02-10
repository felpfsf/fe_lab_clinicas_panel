import 'dart:async';
import 'dart:developer';

import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_panel/src/pages/login/login_router.dart';
import 'package:fe_lab_clinicas_panel/src/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const LabClinicasPanel());
  }, (error, stack) {
    log('Erro não tratado', error: error, stackTrace: stack);
    throw error;
  });
}

class LabClinicasPanel extends StatelessWidget {
  const LabClinicasPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return LabClinicasCoreConfig(
      title: 'Lab Clincas Painel',
      pagesBuilder: [
        FlutterGetItPageBuilder(page: (_) => const SplashPage(), path: '/'),
      ],
      pages: [
        LoginRouter(),
      ],
    );
  }
}
