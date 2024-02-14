import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';

class SportsButtonWidgets extends StatefulWidget {
  const SportsButtonWidgets({
    super.key,
  });

  @override
  State<SportsButtonWidgets> createState() => _SportsButtonWidgetsState();
}

class _SportsButtonWidgetsState extends State<SportsButtonWidgets> {
  bool isFootBall = true;
  Color selectedColor = kMainColor;
  Color unselectedColor = kGrayColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isFootBall = true;
            });
          },
          child: Container(
            // width: 96.42,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1,
                    color: isFootBall ? selectedColor : unselectedColor),
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
            // width: 96.42,
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
        TextButton(
            onPressed: () {},
            child: Text(
              "Clear All",
              style: StylesData.font12,
            ))
      ],
    );
  }
}
