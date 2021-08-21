import 'package:blueskytour/ui/views/home/home_view.dart';
import 'package:blueskytour/ui/views/home/home_viewmodel.dart';
import 'package:blueskytour/ui/views/root/root_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class RootViewModel extends BaseViewModel {
  NavigatorState? navigatorState;

  RootViewModel(BuildContext context) {
    navigatorState = Navigator.of(context);
  }

  Future<void> onReady() async {
    await Future.delayed(Duration(milliseconds: 100));
    print("On Ready ___ rootViewModel");
    navigatorState!.push(HomeViewRoute());
  }
}
