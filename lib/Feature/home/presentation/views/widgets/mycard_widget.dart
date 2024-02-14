import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 66.30,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: kMainColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(AssetsData.test4),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mohamed",
                  style: StylesData.font14.copyWith(color: Colors.white),
                ),
                Text(
                  "You",
                  style: StylesData.font11.copyWith(color: Colors.white),
                ),
              ],
            ),
            const Spacer(),
            const ImageIcon(
              AssetImage(AssetsData.actiSel),
              size: 24,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
//