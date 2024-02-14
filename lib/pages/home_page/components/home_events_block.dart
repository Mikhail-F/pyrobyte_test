import 'package:flutter/material.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/styles/styles.dart';
import 'package:pyrobyte_test/ui/widgets/custom_button.dart';

class HomeEventsBlock extends StatelessWidget {
  const HomeEventsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("События", style: CustomStyles.robotoMedium(fontSize: 16)),
        const SizedBox(height: 20),
        _item(title: "Сейф переполнен"),
        _item(title: "Сломался купюроприемник", subtitle: "2341245"),
        _item(title: "Закончилась наличка", subtitle: "Toshiba снековый"),
        const SizedBox(height: 10),
        customButton(
            context: context,
            onPress: () {},
            height: 36,
            font: CustomFonts.jostLight,
            title: "Смотреть еще",
            showBackground: false)
      ],
    );
  }

  Widget _item({required String title, String? subtitle}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () {},
        child: Ink(
          decoration: BoxDecoration(
              border: const Border(
                  left: BorderSide(color: CustomColors.red, width: 2)),
              borderRadius: BorderRadius.circular(4),
              color: CustomColors.white),
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "14:00",
                style: CustomStyles.jostMedium(
                  color: CustomColors.grey.withOpacity(0.5),
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: CustomStyles.jostMedium()),
                subtitle != null
                    ? Text(subtitle,
                        style: CustomStyles.jostRegular(
                            fontSize: 12,
                            color: CustomColors.grey.withOpacity(0.5)))
                    : const SizedBox.shrink(),
              ],
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right_sharp,
            ),
          ),
        ),
      ),
    );
  }
}
