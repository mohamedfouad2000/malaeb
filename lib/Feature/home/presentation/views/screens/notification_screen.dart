import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/notification_list_widgest.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarwithtitle(context, 'Notification'),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            NotificationList(),
          ],
        ),
      ),
    );
  }
}
