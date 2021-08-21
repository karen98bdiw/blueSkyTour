import 'package:blueskytour/base/images.dart';
import 'package:blueskytour/style/size.dart';
import 'package:blueskytour/style/styles.dart';
import 'package:blueskytour/ui/widgets/language_picker.dart';
import 'package:blueskytour/ui/widgets/logo.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.topLeft,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: AppSizes.phHeight(30) + 20,
            right: 150,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.menuBg,
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: AppSizes.phHeight(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MenuItem(title: "Home"),
                          MenuItem(title: "About us"),
                          MenuItem(title: "Hotels"),
                          MenuItem(title: "Tours"),
                          MenuItem(title: "Gallery"),
                          MenuItem(title: "Contact Us"),
                        ],
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MenuItem extends StatefulWidget {
  final String title;
  const MenuItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  TextStyle? itemStyle;

  @override
  void initState() {
    itemStyle = AppTextStyles.MENU_ITEM_TEXT_STYLE;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          itemStyle = AppTextStyles.MENU_ITEM_TEXT_STYLE_HOVERED;
        });
      },
      onExit: (_) {
        setState(() {
          itemStyle = AppTextStyles.MENU_ITEM_TEXT_STYLE;
        });
      },
      child: Container(
        child: Center(
          child: Text(
            widget.title,
            style: itemStyle,
          ),
        ),
      ),
    );
  }
}
