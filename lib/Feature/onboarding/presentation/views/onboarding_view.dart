import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';

import 'package:malaeb/Core/utils/components.dart';

import 'package:malaeb/Feature/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:malaeb/Feature/signup/presentation/views/signup_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Image(
            image: AssetImage(AssetsData.appLogo),
            width: 90,
            height: 29,
          ),
          actions: [
            Text(
              'Arabic',
              style: StylesData.font13,
            ),
            const SizedBox(
              width: 6,
            ),
            const Image(
              image: AssetImage(AssetsData.arabic),
              width: 32,
              height: 32,
            ),
            const SizedBox(
              width: 6,
            ),
          ],
          leading: TextButton(
              onPressed: () {
                NavegatorPush(context, const SignUpView());
              },
              child: Text('skip',
                  style: StylesData.font14.copyWith(color: kMainColor))),
        ),
        body: const OnBoardingViewBody());
  }
}
