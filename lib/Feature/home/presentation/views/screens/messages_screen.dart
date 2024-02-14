import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/message_item.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverList.separated(
            itemBuilder: (BuildContext context, int index) {
              return const MessageItemWidget();
            },
            separatorBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: kGrayColor.withOpacity(.4),
                ),
              );
            },
            itemCount: 3,
          ),
        ],
      ),
    );
  }
}
