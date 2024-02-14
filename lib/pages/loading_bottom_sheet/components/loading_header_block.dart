import 'package:flutter/material.dart';
import 'package:pyrobyte_test/styles/styles.dart';

class LoadingHeaderBlock extends StatelessWidget {
  const LoadingHeaderBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Загрузка", style: CustomStyles.robotoBold(fontSize: 24)),
        InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.close),
        ),
      ],
    );
  }
}
