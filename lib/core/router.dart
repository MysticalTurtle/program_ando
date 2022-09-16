import 'package:flutter/widgets.dart';
import 'package:program_ando/presentation/home/home_page.dart';
import 'package:program_ando/presentation/login/login_page.dart';
abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> pages = {
    "login_page": (BuildContext context) => const LoginPage(),
    "home_page" : (BuildContext context ) => const HomePage(),
  };
}