import 'package:blueskytour/base/images.dart';
import 'package:blueskytour/style/size.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.phHeight(30),
      width: AppSizes.phHeight(30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppImages.logo,
          ),
        ),
      ),
    );
  }
}
