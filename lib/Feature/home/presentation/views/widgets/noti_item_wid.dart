import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 7,
        left: 16,
        right: 16,
        bottom: 7,
      ),
      decoration: ShapeDecoration(
        color: const Color(0xFFFEFEFE),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: kMainColor,
            radius: 21,
            backgroundImage: const AssetImage(AssetsData.stad),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Malaeb",
                  style: StylesData.font14.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: .5,
                ),
                Text(
                  "your checkout was succfully!",
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  style: StylesData.font10.copyWith(
                    color: const Color(0xFF929191),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
