import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Core/widgets/line_wid.dart';
import 'package:malaeb/Feature/home/data/chat_model.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/message_resever.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/message_sender.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({super.key, required this.typingCon});
  final TextEditingController typingCon;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const LineWidget(),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        Container(
                          height: 27,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF2F2F2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            'Sept 09',
                            style: StylesData.font12
                                .copyWith(color: const Color(0xFF333333)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Msqs[index].userId == 1
                            ? MessageSender(text: Msqs[index].txt)
                            : MessageResiver(text: Msqs[index].txt),
                      ],
                    );
                  }
                  if (Msqs[index].userId == 1) {
                    return MessageSender(text: Msqs[index].txt);
                  } else {
                    return MessageResiver(text: Msqs[index].txt);
                  }
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 5,
                  );
                },
                itemCount: Msqs.length,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: kMainColor,
                child: const Center(
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: customTextFormedFiled(
                    controller: typingCon,
                    rad: 12,
                    hintText: "Start typing..."),
              ),
              const SizedBox(
                width: 16,
              ),
              const Image(
                image: AssetImage(AssetsData.like),
                width: 24,
                height: 24,
              )
            ],
          ),
        )
      ],
    );
  }
}

List<ChatModel> Msqs = [
  const ChatModel(userId: 1, txt: 'Hello... can we play together?'),
  const ChatModel(userId: 2, txt: 'Hi, Oh yes your are welcome'),
  const ChatModel(userId: 1, txt: 'thanks so much'),
  const ChatModel(userId: 2, txt: 'Lol 🤘'),
];
