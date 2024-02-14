import 'package:flutter/material.dart';

class PriceListItemModel {
  final int id;
  final TextEditingController controllerNumber = TextEditingController();
  final TextEditingController controllerPrice = TextEditingController();

  PriceListItemModel({required this.id});
}
