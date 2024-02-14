import 'package:flutter/material.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/styles/styles.dart';

class HomeFinanceBlock extends StatelessWidget {
  const HomeFinanceBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child:
              Text("Финансы", style: CustomStyles.robotoMedium(fontSize: 16)),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 72,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => _item(),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: 10),
        ),
      ],
    );
  }

  Widget _item() {
    return Container(
      height: 72,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(color: CustomColors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/Money.png"),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("5700 Р", style: CustomStyles.jostMedium()),
              Text("Деньги в ТА", style: CustomStyles.jostRegular()),
            ],
          ),
        ],
      ),
    );
  }
}
