import 'package:blueskytour/base/images.dart';
import 'package:blueskytour/data/utils/country.dart';
import 'package:blueskytour/style/styles.dart';
import 'package:flutter/material.dart';

class LanguagePicker extends StatefulWidget {
  const LanguagePicker({Key? key}) : super(key: key);

  @override
  _LanguagePickerState createState() => _LanguagePickerState();
}

class _LanguagePickerState extends State<LanguagePicker> {
  bool expandPicker = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 100,
      duration: Duration(milliseconds: 500),
      height: expandPicker ? 50 * 5 + 20 : 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LanguagePickerItem(
                  flag: AppImages.arm,
                  index: 0,
                ),
                LanguagePickerItem(
                  flag: AppImages.usa,
                  index: 1,
                ),
                LanguagePickerItem(
                  flag: AppImages.ru,
                  index: 2,
                ),
                LanguagePickerItem(
                  flag: AppImages.ge,
                  index: 3,
                ),
                LanguagePickerItem(
                  flag: AppImages.fce,
                  index: 4,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                expandPicker = !expandPicker;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              child: Icon(
                expandPicker
                    ? Icons.arrow_drop_up_sharp
                    : Icons.arrow_drop_down_sharp,
                size: 30,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LanguagePickerItem extends StatelessWidget {
  final String flag;
  final int index;
  const LanguagePickerItem({
    Key? key,
    required this.flag,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.only(
        top: index == 0 ? 0 : 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(flag),
          ),
        ),
      ),
    );
  }
}
