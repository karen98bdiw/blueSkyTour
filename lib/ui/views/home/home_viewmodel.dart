import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  NavigatorState? navigatorState;

  HomeViewModel(BuildContext context) {
    navigatorState = Navigator.of(context);
  }

  Future<void> onReady() async {}
}
