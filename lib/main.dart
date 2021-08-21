import 'package:blueskytour/app.dart';
import 'package:flutter/material.dart';

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

main() async {
  run();
}
