import 'package:flutter/material.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/styles/styles.dart';

class LoadingBunnerBlock extends StatelessWidget {
  const LoadingBunnerBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: CustomColors.green.withOpacity(0.1)),
      margin: const EdgeInsets.only(bottom: 20, top: 10),
      padding: const EdgeInsets.all(15),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Icon(Icons.check, color: CustomColors.green),
        const SizedBox(width: 15),
        Flexible(
          child: Text(
            "Изменения от 12.07.2021, 12:30 применены успешно",
            style: CustomStyles.robotoLight(fontSize: 16),
          ),
        )
      ]),
    );
  }
}
