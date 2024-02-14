import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/styles.dart';

class PayWithWallet extends StatelessWidget {
  const PayWithWallet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "or pay with wallets",
          style: StylesData.font16.copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: double.infinity,
          height: 71.54,
          padding: const EdgeInsets.only(
            top: 14,
            left: 24,
            right: 24,
            bottom: 14,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Row(
            children: [
              Image(
                image: AssetImage(
                  AssetsData.paypal,
                ),
                width: 43.538,
                height: 43.538,
              ),
              SizedBox(
                width: 22,
              ),
              Text("Paypal")
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          height: 71.54,
          padding: const EdgeInsets.only(
            top: 14,
            left: 24,
            right: 24,
            bottom: 14,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Row(
            children: [
              Image(
                image: AssetImage(
                  AssetsData.payu,
                ),
                width: 43.538,
                height: 43.538,
              ),
              SizedBox(
                width: 22,
              ),
              Text("Payu money")
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          height: 71.54,
          padding: const EdgeInsets.only(
            top: 14,
            left: 24,
            right: 24,
            bottom: 14,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Row(
            children: [
              Image(
                image: AssetImage(
                  AssetsData.stripe,
                ),
                width: 43.538,
                height: 43.538,
              ),
              SizedBox(
                width: 8,
              ),
              Text("stripe")
            ],
          ),
        ),
        const SizedBox(
          height: 22,
        ),
      ],
    );
  }
}
