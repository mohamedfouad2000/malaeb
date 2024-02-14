import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/chat_screen.dart';

class UserRowWidget extends StatelessWidget {
  const UserRowWidget(
      {super.key, required this.bacColor, required this.textColor});
  final Color bacColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        // height: 66.30,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: bacColor == kMainColor ? const Color(0xFF5E8A2C) : bacColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1,
                color: bacColor == kMainColor
                    ? Colors.white
                    : const Color(0xFFDBDBDB)),
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
                  "نايف ،، ابو بدر",
                  style: StylesData.font14.copyWith(color: textColor),
                ),
                Text(
                  "Organizer",
                  style: StylesData.font11.copyWith(color: textColor),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                NavegatorPush(context, const ChatScreen());
              },
              child: ImageIcon(
                const AssetImage(AssetsData.messSel),
                size: 20,
                color: bacColor == kMainColor ? Colors.white : kMainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
//