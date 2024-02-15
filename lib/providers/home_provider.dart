import 'package:flutter/material.dart';
import 'package:pyrobyte_test/models/home_finance_item_model.dart';

class HomeProvider extends ChangeNotifier {
  final List<HomeFinanceItemModel> _financeListItems = [
    HomeFinanceItemModel(
      image: "assets/images/Money.png",
      title: "5700",
      subtitle: "Деньги в ТА",
    ),
    HomeFinanceItemModel(
      image: "assets/images/Cashback.png",
      title: "1 255",
      subtitle: "Сдача",
    ),
    HomeFinanceItemModel(
      image: "assets/images/Money.png",
      title: "5700",
      subtitle: "Деньги в ТА",
    ),
    HomeFinanceItemModel(
      image: "assets/images/Cashback.png",
      title: "1 255",
      subtitle: "Сдача",
    ),
    HomeFinanceItemModel(
      image: "assets/images/Money.png",
      title: "5700",
      subtitle: "Деньги в ТА",
    ),
    HomeFinanceItemModel(
      image: "assets/images/Cashback.png",
      title: "1 255",
      subtitle: "Сдача",
    ),
    HomeFinanceItemModel(
      image: "assets/images/Money.png",
      title: "5700",
      subtitle: "Деньги в ТА",
    ),
    HomeFinanceItemModel(
      image: "assets/images/Cashback.png",
      title: "1 255",
      subtitle: "Сдача",
    ),
  ];

  List<HomeFinanceItemModel> get financeListItems => _financeListItems;
}
