import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/chat_screen.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavegatorPush(context, const ChatScreen());
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: kMainColor,
            radius: 5,
          ),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: kMainColor,
            radius: 21,
            backgroundImage: const AssetImage(AssetsData.stad),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Jane Cooper",
                        style: StylesData.font16.copyWith(color: Colors.black),
                      ),
                    ),
                    Text(
                      "9:36 AM",
                      style: StylesData.font11,
                    )
                  ],
                ),
                const SizedBox(
                  height: .5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    "Nice. I don't know why people get all worked up about hawaiian pizza.",
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: StylesData.font11,
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
