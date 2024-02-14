import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';

class OpeningTime extends StatelessWidget {
  const OpeningTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Opening Times:",
                style: StylesData.font18.copyWith(color: Colors.black),
              ),
              Text(
                "04:00 pm - 11:59 PM",
                style: StylesData.font12.copyWith(color: Colors.black),
              ),
            ],
          ),
          const Spacer(),
          Container(
            // width: 142,
            // height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFF85C240)),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Contact Us",
                  style: StylesData.font14.copyWith(color: kMainColor),
                ),
                const SizedBox(
                  width: 6,
                ),
                ImageIcon(
                  const AssetImage(
                    AssetsData.messSel,
                  ),
                  size: 20,
                  color: kMainColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
