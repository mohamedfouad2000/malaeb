import 'package:flutter/material.dart';

import 'package:malaeb/Core/utils/components.dart';

import 'package:malaeb/Feature/payment/presentation/views/widgets/payment_view_body.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarwithtitle(context, 'Payment Methods'),
      body: const PaymentViewBody(),
    );
  }
}
