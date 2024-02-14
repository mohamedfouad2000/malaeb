import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/login/presentation/views/widgets/otp_page_view_body.dart';

class OtpViewPage extends StatelessWidget {
  const OtpViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: const OtpViewPageBody(),
    );
  }
}
