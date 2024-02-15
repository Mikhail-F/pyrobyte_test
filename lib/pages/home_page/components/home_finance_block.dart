import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/models/home_finance_item_model.dart';
import 'package:pyrobyte_test/providers/home_provider.dart';
import 'package:pyrobyte_test/styles/styles.dart';

class HomeFinanceBlock extends StatelessWidget {
  const HomeFinanceBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final homeWatch = context.watch<HomeProvider>();
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
              itemBuilder: (context, index) {
                final HomeFinanceItemModel item =
                    homeWatch.financeListItems[index];
                return _item(item);
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: homeWatch.financeListItems.length),
        ),
      ],
    );
  }

  Widget _item(HomeFinanceItemModel item) {
    return Container(
      height: 72,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: CustomColors.white, borderRadius: BorderRadius.circular(4)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(item.image),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${item.title} Р", style: CustomStyles.jostMedium()),
              Text(item.subtitle, style: CustomStyles.jostRegular()),
            ],
          ),
        ],
      ),
    );
  }
}
