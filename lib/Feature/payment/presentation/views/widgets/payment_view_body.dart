import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/payment/presentation/views/screens/add_credit_card_Screen.dart';
import 'package:malaeb/Feature/payment/presentation/views/widgets/pay_wallet_widget.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pay In Credit Card",
              style: StylesData.font16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            const Image(
              image: AssetImage(
                AssetsData.payment,
              ),
              height: 216,
              width: double.infinity,
            ),
            const SizedBox(
              height: 20,
            ),
            const PayWithWallet(),
            Center(
              child: SizedBox(
                width: 217,
                height: 38,
                child: defaultButton(
                    fun: () {
                      NavegatorPush(context, const AddCreditCardScreen());
                    },
                    textWidget: Text(
                      "Add New Card",
                      style: StylesData.font14.copyWith(color: Colors.white),
                    ),
                    c: kMainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
