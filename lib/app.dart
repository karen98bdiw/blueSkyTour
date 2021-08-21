import 'package:blueskytour/base/app_keys.dart';
import 'package:blueskytour/ui/views/root/root_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppKeys.navigatorKey,
      home: RootView(),
    );
  }
}
