import 'package:flutter/material.dart';
import 'package:pyrobyte_test/constans.dart';

ElevatedButton customButton({
  required BuildContext context,
  required Function onPress,
  required String title,
  String font = CustomFonts.jostMedium,
  bool isSwitcherLeft = false,
  bool isSwitcherRight = false,
  bool showBackground = true,
  double height = 48,
  Color? borderColor,
  Color? textColor,
  Color? backgroundColor,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      surfaceTintColor: Colors.transparent,
      foregroundColor: CustomColors.grey,
      padding: const EdgeInsets.all(5),
      shadowColor: Colors.transparent,
      backgroundColor: showBackground ? CustomColors.blue : Colors.transparent,
      elevation: 0,
      minimumSize: Size(MediaQuery.of(context).size.width, height),
      shape: RoundedRectangleBorder(
        borderRadius: isSwitcherLeft || isSwitcherRight
            ? BorderRadius.only(
                topLeft: isSwitcherLeft
                    ? const Radius.circular(8)
                    : const Radius.circular(0),
                topRight: isSwitcherLeft
                    ? const Radius.circular(0)
                    : const Radius.circular(8),
                bottomLeft: isSwitcherLeft
                    ? const Radius.circular(8)
                    : const Radius.circular(0),
                bottomRight: isSwitcherLeft
                    ? const Radius.circular(0)
                    : const Radius.circular(8),
              )
            : BorderRadius.circular(8),
        side: const BorderSide(color: CustomColors.blue, width: 1),
      ),
    ),
    onPressed: () => onPress(),
    child: Text(
      title,
      style: TextStyle(
        color: showBackground ? CustomColors.white : CustomColors.blue,
        fontFamily: font,
        fontSize: 15,
      ),
    ),
  );
}
