import 'package:fe_lab_clinicas_panel/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LoginRouter extends FlutterGetItPageRouter {
  @override
  List<Bind<Object>> get bindings => [];

  @override
  String get routeName => '/login';

  @override
  WidgetBuilder get view => (_) => const LoginPage();
}
