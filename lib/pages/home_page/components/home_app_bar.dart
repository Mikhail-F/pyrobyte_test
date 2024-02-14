import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/pages/loading_bottom_sheet/loading_bottom_sheet.dart';
import 'package:pyrobyte_test/providers/loading_bottom_sheet_provider.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      backgroundColor: CustomColors.background,
      leading: GestureDetector(
        onTap: () => {},
        child: const Icon(
          Icons.arrow_back,
          color: CustomColors.black,
        ),
      ),
      actions: [
        InkWell(
          onTap: () => _showLoadingBottomSheet(context),
          child: Image.asset("assets/images/gear.png"),
        ),
        const SizedBox(width: 20),
      ],
      elevation: 0,
    );
  }

  Future<void> _showLoadingBottomSheet(BuildContext context) async {
    final loadingBottomSheetRead = context.read<LoadingBottomSheetProvider>();

    await showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      useSafeArea: true,
      context: context,
      builder: (context) => const LoadingBottomSheet(),
    );
    loadingBottomSheetRead.clearAll();
  }
}
