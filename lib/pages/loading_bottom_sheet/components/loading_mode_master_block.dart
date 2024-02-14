import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/providers/loading_bottom_sheet_provider.dart';
import 'package:pyrobyte_test/styles/styles.dart';
import 'package:pyrobyte_test/ui/widgets/custom_button.dart';

class LoadingModeMasterBlock extends StatelessWidget {
  const LoadingModeMasterBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final loadingBottomSheetRead = context.read<LoadingBottomSheetProvider>();
    final loadingBottomSheetWatch = context.watch<LoadingBottomSheetProvider>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Режим мастер",
          style: CustomStyles.robotoMedium(fontSize: 16),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Flexible(
              child: customButton(
                  context: context,
                  isSwitcherLeft: true,
                  showBackground: loadingBottomSheetWatch.useModeMaster,
                  font: CustomFonts.jostLight,
                  onPress: () => loadingBottomSheetRead.changeModeMaster(true),
                  title: "Используется"),
            ),
            Flexible(
              child: customButton(
                  context: context,
                  isSwitcherRight: true,
                  showBackground: !loadingBottomSheetWatch.useModeMaster,
                  font: CustomFonts.jostLight,
                  onPress: () => loadingBottomSheetRead.changeModeMaster(false),
                  title: "Не используется"),
            ),
          ],
        )
      ],
    );
  }
}
