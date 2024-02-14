import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/colors.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabCont = TabController(length: 2, vsync: this);
    return Column(
      children: [
        TabBar(
            controller: tabCont,
            indicatorColor: kMainColor,
            // automaticIndicatorColorAdjustment: false,
            splashBorderRadius: const BorderRadius.all(Radius.circular(10)),
            labelColor: kMainColor,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kMainColor, // Set the color of the line
                  width: 2.0, // Set the width of the line
                ),
              ),
            ),
            tabs: const [
              Tab(
                child: Text(
                  "upcoming",
                ),
              ),
              Tab(
                child: Text(
                  "past activates",
                ),
              ),
            ]),
        Expanded(
            child: TabBarView(
          controller: tabCont,
          children: [
            Container(),
            Container(),
          ],
        ))
      ],
    );
  }
}
