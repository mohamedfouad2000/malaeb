import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/size_config.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/stadium/presentation/views/screens/deatils_screen.dart';

import 'package:malaeb/Feature/stadium/presentation/views/widgets/staduim_deatils_imag.dart';

class StadiumDetailsViewBody extends StatefulWidget {
  const StadiumDetailsViewBody({super.key});

  @override
  State<StadiumDetailsViewBody> createState() => _StadiumDetailsViewBodyState();
}

class _StadiumDetailsViewBodyState extends State<StadiumDetailsViewBody>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabCont = TabController(length: 3, vsync: this);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: StadiumDeatilsImg(),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Soccer World",
              style: StylesData.font26,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  "sell all reviews",
                  style: StylesData.font16.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const ImageIcon(
                  AssetImage(AssetsData.star),
                  size: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '4.3/5 (24)',
                  style: StylesData.font16.copyWith(
                    color: const Color(0xFF6E7177),
                  ),
                ),
                const Spacer(),
                Text(
                  "Coming Soon",
                  style: StylesData.font12.copyWith(
                    color: const Color(0xFF6E7177),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TabBar(
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
                    text: "Details",
                  ),
                  Tab(
                    text: 'leaderboard',
                  ),
                  Tab(
                    text: 'coatching',
                  ),
                ]),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * .8,
            child: TabBarView(
              controller: tabCont,
              physics: const BouncingScrollPhysics(),
              children: [
                const DeatilsScreen(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
