import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/chat_screen_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController typingCon = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leadingWidth: 50,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(AssetsData.test3),
            ),
            const Spacer(),
            Center(
              child: Text(
                'نايف ,, ابو بدر',
                style: StylesData.font18,
              ),
            ),
            const Spacer(),
            const SizedBox(
              width: 40,
            ),
            const ImageIcon(
              AssetImage(
                AssetsData.mn,
              ),
              size: 20,
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: kMainColor,
              child: const Center(
                child: Icon(
                  Icons.arrow_back_outlined,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ChatScreenBody(typingCon: typingCon),
    );
  }
}
