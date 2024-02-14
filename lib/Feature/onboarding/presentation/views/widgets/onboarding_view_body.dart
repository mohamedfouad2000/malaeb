import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/size_config.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/onboarding/presentation/views/widgets/page_view_iteam.dart';
import 'package:malaeb/Feature/signup/presentation/views/signup_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController pageController = PageController();
  int? index = 0;
  bool islast = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          controller: pageController,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (value) {
            index = value;
            if (value == 2) {
              setState(() {
                islast = true;
              });
            } else {
              setState(() {
                islast = false;
              });
            }
          },
          children: [
            pageViewItem(
                title: 'Book Sadiums In Your Area',
                subTitle:
                    'Free Nearby Stadiums And Book Them Eaiser Than Erver ',
                image: AssetsData.onboaring1),
            pageViewItem(
                title: 'Want To Play Football?',
                subTitle: 'Join  Matches With Other Users',
                image: AssetsData.onboaring2),
            pageViewItem(
                title: 'Complete On The Leaderboard',
                subTitle:
                    'Become The Best! Earn Points And Level Up On The Leaderboard',
                image: AssetsData.onboaring3),
          ],
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 18,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: kMainColor.withOpacity(.4),
              activeDotColor: kMainColor,
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 18,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: kMainColor.withOpacity(.4),
              activeDotColor: kMainColor,
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 6,
          child: Text(
            'privacy',
            style: StylesData.font16.copyWith(color: Colors.black),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          left: 10,
          right: 10,
          child: defaultButton(
              fun: () {
                NavegatorPush(context, const SignUpView());
              },
              textWidget: Text(
                "Sign up",
                style: StylesData.font16.copyWith(color: Colors.white),
              ),
              c: kMainColor),
        ),
      ],
    );
  }
}
