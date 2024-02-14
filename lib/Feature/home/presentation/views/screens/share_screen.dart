import 'package:flutter/material.dart';

import 'package:malaeb/Core/utils/components.dart';

import 'package:malaeb/Feature/home/presentation/views/widgets/share_screen_body.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarwithtitle(context, 'Share'),
      body: const ShareScreenBody(),
    );
  }
}
