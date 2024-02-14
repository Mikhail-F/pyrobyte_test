import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/providers/loading_bottom_sheet_provider.dart';
import 'package:pyrobyte_test/styles/styles.dart';
import 'package:pyrobyte_test/ui/widgets/custom_text_field.dart';

class LoadingParamInputsBlock extends StatelessWidget {
  const LoadingParamInputsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final loadingBottomSheetRead = context.read<LoadingBottomSheetProvider>();
    final loadingBottomSheetWatch = context.watch<LoadingBottomSheetProvider>();

    return Column(
      children: [
        _rowInputs(
          title: "Decimal position",
          controllerCash: loadingBottomSheetRead.controllerDecimalCash,
          controllerCashless: loadingBottomSheetRead.controllerDecimalCashless,
        ),
        const SizedBox(height: 20),
        _rowInputs(
          title: "Scale factor",
          controllerCash: loadingBottomSheetRead.controllerScaleCash,
          controllerCashless: loadingBottomSheetRead.controllerScaleCashless,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(4),
              onTap: () => loadingBottomSheetRead.changeEnabledSound(),
              child: Ink(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: CustomColors.lightGrey,
                    width: 1,
                  ),
                ),
                child: loadingBottomSheetWatch.soundEnabled
                    ? const Icon(
                        Icons.check,
                        size: 18,
                        color: CustomColors.black,
                      )
                    : null,
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () => loadingBottomSheetRead.changeEnabledSound(),
              child: Text(
                "Включить звук",
                style: CustomStyles.robotoLight(fontSize: 16),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _rowInputs({
    required String title,
    required TextEditingController controllerCash,
    required TextEditingController controllerCashless,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: CustomStyles.robotoMedium(fontSize: 16),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: Row(
            children: [
              Flexible(
                child: customTextField(
                  controller: controllerCash,
                  hint: "Cash",
                ),
              ),
              const SizedBox(width: 15),
              Flexible(
                child: customTextField(
                  controller: controllerCashless,
                  hint: "Cashless",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
