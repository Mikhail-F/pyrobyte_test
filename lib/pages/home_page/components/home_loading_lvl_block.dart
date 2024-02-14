import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:pyrobyte_test/constans.dart';
import 'package:pyrobyte_test/styles/styles.dart';
import 'package:pyrobyte_test/ui/widgets/custom_button.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class HomeLoadingLvlBlock extends StatefulWidget {
  const HomeLoadingLvlBlock({super.key, required this.precent});
  final double precent;

  @override
  State<HomeLoadingLvlBlock> createState() => _HomeLoadingLvlBlockState();
}

class _HomeLoadingLvlBlockState extends State<HomeLoadingLvlBlock> {
  double precent = 0;
  double value = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 1),
        () => setState(() => {
              precent = widget.precent,
              value = 1.6 * precent,
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            clipBehavior: Clip.hardEdge,
            height: 160,
            decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.circular(4)),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Positioned(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: value,
                    child: WaveWidget(
                      config: CustomConfig(
                        colors: [
                          CustomColors.blue.withOpacity(0.5),
                        ],
                        durations: [4000],
                        heightPercentages: [
                          precent >= 95
                              ? -0.1
                              : precent >= 100
                                  ? -0.2
                                  : 0
                        ],
                      ),
                      size: const Size(double.infinity, double.infinity),
                      waveAmplitude: -5,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Countup(
                            begin: 0,
                            end: precent,
                            duration: const Duration(seconds: 1),
                            suffix: "%",
                            style: CustomStyles.jostBold(fontSize: 40)),
                        Text("Текущий уровень\nзагрузки",
                            style: CustomStyles.jostMedium()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(children: [
            customButton(
                context: context,
                onPress: () {},
                title: "Загрузка",
                showBackground: false),
            const SizedBox(height: 15),
            customButton(
                context: context,
                onPress: () {},
                title: "Инвентаризация",
                showBackground: false),
          ]),
        ),
      ],
    );
  }
}
