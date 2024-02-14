import 'package:flutter/material.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/styles/styles.dart';

class HomeVendingBlock extends StatelessWidget {
  const HomeVendingBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Торговые автоматы", style: CustomStyles.robotoBold(fontSize: 24)),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
              color: CustomColors.white,
              borderRadius: BorderRadius.circular(4)),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("54467345",
                          style: CustomStyles.robotoRegular(fontSize: 24)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: CustomColors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Text("Не работает",
                              style: CustomStyles.robotoLight()),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text("ТЦ Мега, Химки",
                          style: CustomStyles.robotoLight(
                            fontSize: 12,
                          )),
                    ],
                  ),
                  Text("Снековый",
                      style: CustomStyles.robotoLight(
                          fontSize: 12, color: CustomColors.grey)),
                ],
              ),
            ),
            const Divider(height: 1, color: CustomColors.background),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  _item(type: "Тип шины", value: "MDB"),
                  _item(type: "Уровень сигнала", value: "Стабильный"),
                  _item(type: "Идентификатор", value: "13856646"),
                  _item(type: "Модем", value: "3463457365"),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }

  Widget _item({required String type, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(type, style: CustomStyles.robotoLight()),
          Text(value, style: CustomStyles.robotoLight()),
        ],
      ),
    );
  }
}
