import 'package:flutter/material.dart';
import 'package:pyrobyte_test/models/price_list_item_model.dart';

class LoadingBottomSheetProvider extends ChangeNotifier {
  final TextEditingController _controllerDecimalCash = TextEditingController();
  final TextEditingController _controllerDecimalCashless =
      TextEditingController();
  final TextEditingController _controllerScaleCash = TextEditingController();
  final TextEditingController _controllerScaleCashless =
      TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _soundEnabled = true;
  bool _useModeMaster = true;
  final List<PriceListItemModel> _priceLists = [];

  TextEditingController get controllerDecimalCash => _controllerDecimalCash;
  TextEditingController get controllerDecimalCashless =>
      _controllerDecimalCashless;
  TextEditingController get controllerScaleCash => _controllerScaleCash;
  TextEditingController get controllerScaleCashless => _controllerScaleCashless;

  ScrollController get scrollController => _scrollController;
  bool get soundEnabled => _soundEnabled;
  bool get useModeMaster => _useModeMaster;
  List<PriceListItemModel> get priceLists => _priceLists;

  void changeEnabledSound() {
    _soundEnabled = !_soundEnabled;
    notifyListeners();
  }

  void changeModeMaster(bool value) {
    _useModeMaster = value;
    notifyListeners();
  }

  void addItemToPriceList() {
    _priceLists.add(PriceListItemModel(id: 1));
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent + 60,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
    notifyListeners();
  }

  void deleteItemFromPriceList(PriceListItemModel item) {
    final int indexItem = _priceLists.indexOf(item);
    _priceLists.removeAt(indexItem);
    notifyListeners();
  }

  void clearAll() {
    _controllerDecimalCash.clear();
    _controllerDecimalCashless.clear();
    _controllerScaleCash.clear();
    _controllerScaleCashless.clear();
    _soundEnabled = true;
    _useModeMaster = true;
    _priceLists.clear();
  }
}
