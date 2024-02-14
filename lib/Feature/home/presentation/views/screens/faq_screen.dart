import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/faq_screen_body.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarwithtitle(context, 'Faq'),
      body: const FaqScreenBody(),
    );
  }
}
