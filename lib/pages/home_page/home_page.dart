import 'package:flutter/material.dart';
import 'package:pyrobyte_test/pages/home_page/components/home_app_bar.dart';
import 'package:pyrobyte_test/pages/home_page/components/home_events_block.dart';
import 'package:pyrobyte_test/pages/home_page/components/home_finance_block.dart';
import 'package:pyrobyte_test/pages/home_page/components/home_loading_lvl_block.dart';
import 'package:pyrobyte_test/pages/home_page/components/home_vending_block.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 50),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  HomeVendingBlock(),
                  SizedBox(height: 25),
                  HomeLoadingLvlBlock(precent: 85),
                  SizedBox(height: 25),
                  HomeEventsBlock(),
                  SizedBox(height: 25),
                ],
              ),
            ),
            HomeFinanceBlock(),
          ],
        ),
      ),
    );
  }
}
