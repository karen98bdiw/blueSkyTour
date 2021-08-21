import 'package:blueskytour/base/app_keys.dart';
import 'package:blueskytour/base/images.dart';
import 'package:blueskytour/style/size.dart';
import 'package:blueskytour/ui/views/home/home_viewmodel.dart';
import 'package:blueskytour/ui/widgets/language_picker.dart';
import 'package:blueskytour/ui/widgets/logo.dart';
import 'package:blueskytour/ui/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewRoute extends MaterialPageRoute {
  HomeViewRoute() : super(builder: (c) => HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(context),
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) =>
          Stack(
        children: [
          Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Menu(),
                  middle(),
                ],
              ),
            ),
          ),
          Logo(),
          Positioned(
              top: AppSizes.phHeight(7.5) - 25,
              right: 20,
              child: LanguagePicker()),
        ],
      ),
    );
  }

  Widget middle() => Stack(
        children: [
          Image.asset(
            AppImages.screenTopBg,
            width:
                MediaQuery.of(AppKeys.navigatorKey.currentContext!).size.width +
                    200,
            fit: BoxFit.fill,
            height: AppSizes.phHeight(85),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: IconButton(
                    onPressed: () {
                      print("hekowijoeji");
                    },
                    icon: Icon(Icons.ac_unit_outlined)),
              )),
        ],
      );
}
