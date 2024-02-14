import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyrobyte_test/pages/loading_bottom_sheet/components/loading_banner_block.dart';
import 'package:pyrobyte_test/pages/loading_bottom_sheet/components/loading_header_block.dart';
import 'package:pyrobyte_test/pages/loading_bottom_sheet/components/loading_mode_master_block.dart';
import 'package:pyrobyte_test/pages/loading_bottom_sheet/components/loading_param_inputs_block.dart';
import 'package:pyrobyte_test/pages/loading_bottom_sheet/components/loading_price_lists_block.dart';
import 'package:pyrobyte_test/providers/loading_bottom_sheet_provider.dart';
import 'package:pyrobyte_test/ui/widgets/base_bottom_sheet.dart';
import 'package:pyrobyte_test/ui/widgets/custom_button.dart';

class LoadingBottomSheet extends StatelessWidget {
  const LoadingBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    final loadingBottomSheetRead = context.read<LoadingBottomSheetProvider>();

    return FractionallySizedBox(
      heightFactor: 0.94,
      child: BaseBottomSheet(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const LoadingHeaderBlock(),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  controller: loadingBottomSheetRead.scrollController,
                  child: const Column(
                    children: [
                      LoadingBunnerBlock(),
                      LoadingParamInputsBlock(),
                      SizedBox(height: 20),
                      LoadingModeMasterBlock(),
                      SizedBox(height: 20),
                      LoadingPriceListsBlock(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              customButton(
                  context: context,
                  onPress: () {},
                  height: 50,
                  title: "Сохранить изменения"),
            ],
          ),
        ),
      ),
    );
  }
}
