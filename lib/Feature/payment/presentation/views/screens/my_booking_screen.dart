import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/payment/presentation/views/widgets/my_booking_View_body.dart';

class MyBookingView extends StatelessWidget {
  const MyBookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarwithtitle(context, "My booking"),
      body: const MyBookingViewBody(),
    );
  }
}
