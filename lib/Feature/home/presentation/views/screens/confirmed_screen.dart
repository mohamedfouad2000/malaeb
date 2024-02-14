import 'package:flutter/material.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/confirmed_screen_body.dart';

class ConfirmedScreen extends StatelessWidget {
  const ConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());

    return const Scaffold(
      body: ConfirmedScreenBody(),
    );
  }
}
