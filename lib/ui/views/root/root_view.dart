import 'package:blueskytour/ui/views/root/root_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RootViewRoute extends MaterialPageRoute {
  RootViewRoute() : super(builder: (c) => RootView());
}

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RootViewModel>.reactive(
        onModelReady: (RootViewModel model) => model.onReady(),
        viewModelBuilder: () => RootViewModel(context),
        builder: (BuildContext context, RootViewModel model, Widget? child) =>
            Scaffold());
  }
}
