import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/models/price_list_item_model.dart';
import 'package:pyrobyte_test/providers/loading_bottom_sheet_provider.dart';
import 'package:pyrobyte_test/styles/styles.dart';
import 'package:pyrobyte_test/ui/widgets/custom_button.dart';
import 'package:pyrobyte_test/ui/widgets/custom_text_field.dart';

class LoadingPriceListsBlock extends StatelessWidget {
  const LoadingPriceListsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final loadingBottomSheetRead = context.read<LoadingBottomSheetProvider>();
    final loadingBottomSheetWatch = context.watch<LoadingBottomSheetProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Прайс листы",
          style: CustomStyles.robotoMedium(fontSize: 16),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Последняя синхронизация с модемом",
              style: CustomStyles.jostLight(),
            ),
            const SizedBox(width: 5),
            Text(
              "1 час назад",
              style: CustomStyles.jostLight(),
            )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "#",
                    style: CustomStyles.jostLight(),
                  )),
                  const SizedBox(width: 20),
                  Expanded(
                      flex: 2,
                      child: Text(
                        "Цена",
                        style: CustomStyles.jostLight(),
                      ))
                ],
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
          ],
        ),
        ...loadingBottomSheetWatch.priceLists
            .map((item) => _item(context: context, item: item))
            .toList(),
        const SizedBox(height: 10),
        customButton(
            context: context,
            showBackground: false,
            font: CustomFonts.jostLight,
            onPress: loadingBottomSheetRead.addItemToPriceList,
            title: "Добавить строку"),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _item(
      {required BuildContext context, required PriceListItemModel item}) {
    final loadingBottomSheetRead = context.read<LoadingBottomSheetProvider>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: customTextField(controller: item.controllerNumber)),
              const SizedBox(width: 20),
              Expanded(
                  flex: 2,
                  child: customTextField(controller: item.controllerPrice))
            ],
          )),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () =>
                    loadingBottomSheetRead.deleteItemFromPriceList(item),
                borderRadius: BorderRadius.circular(20),
                child: Ink(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: CustomColors.red.withOpacity(0.08),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.close,
                    size: 21,
                    color: CustomColors.red,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
