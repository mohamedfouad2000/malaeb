import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/notification_screen.dart';
import 'package:malaeb/Core/utils/colors.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
    bool isFootBall = true;
  Color selectedColor = kMainColor;
  Color unselectedColor = kGrayColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leadingWidth: 50,
        centerTitle: true,
        title: Text(
          'Training',
          style: StylesData.font18,
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
              onTap: () {
                // scaffoldKey.currentState!.openDrawer();
                // Navigator.pop(context);
              },
              child: const Image(
                image: AssetImage(AssetsData.mn),
                width: 24,
                height: 24,
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  NavegatorPush(context, const NotificationScreen());
                  // Navigator.pop(context);
                },
                child: const Image(
                  image: AssetImage(AssetsData.notification),
                  width: 24,
                  height: 24,
                )),
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: Row(
                  children: [
                      InkWell(
          onTap: () {
            setState(() {
              isFootBall = true;
            });
          },
          child: Container(
            width: 96.42,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFF85C240)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              children: [
                ImageIcon(
                  const AssetImage(
                    AssetsData.matchSel,
                  ),
                  size: 24,
                  color: isFootBall ? selectedColor : unselectedColor,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "football",
                  style: StylesData.font13.copyWith(
                      color: isFootBall ? selectedColor : unselectedColor),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isFootBall = false;
            });
          },
          child: Container(
            width: 96.42,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1,
                    color: isFootBall ? unselectedColor : selectedColor),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              children: [
                ImageIcon(
                  const AssetImage(
                    AssetsData.matchSel,
                  ),
                  color: isFootBall ? unselectedColor : selectedColor,
                  size: 24,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "padel",
                  style: StylesData.font13.copyWith(
                      color: isFootBall ? unselectedColor : selectedColor),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 96.42,
            height: 40,
            padding: const EdgeInsets.all(0.0),
            decoration: ShapeDecoration(
              color: kMainColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: kMainColor),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add/Remove",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: StylesData.font10.copyWith(color: Colors.white),
                ),
                Text(
                  "Sports",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: StylesData.font10.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        // const Spacer(),
      
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
