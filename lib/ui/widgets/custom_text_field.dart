import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/styles/styles.dart';

TextFormField customTextField({
  required TextEditingController controller,
  String? hint,
  Function? onChange,
}) {
  return TextFormField(
    controller: controller,
    inputFormatters: [
      FilteringTextInputFormatter.digitsOnly,
    ],
    cursorColor: CustomColors.blue,
    onChanged: onChange == null ? (_) {} : (_) => onChange(),
    keyboardType: TextInputType.number,
    style: CustomStyles.jostLight(fontSize: 16),
    decoration: InputDecoration(
      fillColor: CustomColors.white,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      filled: true,
      suffixIconConstraints: const BoxConstraints(maxHeight: 40),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: CustomColors.lightGrey, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: CustomColors.blue, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      hintStyle: CustomStyles.jostLight(fontSize: 16, color: CustomColors.grey),
      hintText: hint ?? '',
    ),
  );
}
