import 'package:flutter/material.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/noti_item_wid.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (BuildContext context, int index) {
        return const NotificationItemWidget();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 8,
        );
      },
      itemCount: 3,
    );
  }
}
