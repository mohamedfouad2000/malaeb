import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/term_screen_body.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarwithtitle(context, 'Terms & Conditions'),
      body: const TermScreenBody(),
    );
  }
}
