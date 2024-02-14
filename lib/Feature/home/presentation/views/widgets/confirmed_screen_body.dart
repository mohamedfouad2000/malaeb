import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Core/widgets/line_wid.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/mycard_widget.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/soccer_match_imag.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/user_widget.dart';
import 'package:malaeb/Feature/payment/presentation/views/screens/my_booking_screen.dart';

class ConfirmedScreenBody extends StatelessWidget {
  const ConfirmedScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              const SoccerMatchImag(),
              Positioned(
                  bottom: -33,
                  right: 0.0,
                  left: 0.0,
                  child: UserRowWidget(
                    bacColor: kMainColor,
                    textColor: Colors.white,
                  )),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              "you’r now member in the team!",
              style: StylesData.font20,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              "your payment successfully",
              style: StylesData.font16.copyWith(
                color: const Color(0xFF6E7177),
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Your Teammates',
              style: StylesData.font16
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const MyCardWidget(),
          const SizedBox(
            height: 8,
          ),
          const UserRowWidget(bacColor: Colors.white, textColor: Colors.black),
          const SizedBox(
            height: 8,
          ),
          const UserRowWidget(bacColor: Colors.white, textColor: Colors.black),
          const SizedBox(
            height: 8,
          ),
          const UserRowWidget(bacColor: Colors.white, textColor: Colors.black),
          const SizedBox(
            height: 8,
          ),
          const UserRowWidget(bacColor: Colors.white, textColor: Colors.black),
          const SizedBox(
            height: 8,
          ),
          const UserRowWidget(bacColor: Colors.white, textColor: Colors.black),
          const SizedBox(
            height: 8,
          ),
          const UserRowWidget(bacColor: Colors.white, textColor: Colors.black),
          const SizedBox(
            height: 8,
          ),
          const UserRowWidget(bacColor: Colors.white, textColor: Colors.black),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: defaultButton(
                fun: () {
                  showModalBottomSheet(
                      useSafeArea: false,
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (context) => Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Form(
                              child: Column(
                                children: [
                                  Container(
                                    height: 2,
                                    width: 64,
                                    color: const Color(0xff636363),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "Avilability",
                                    textAlign: TextAlign.start,
                                    style: StylesData.font18
                                        .copyWith(color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  const LineWidget(),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 112.17,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.79, vertical: 13.54),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.75,
                                            color: Color(0xFFDBDBDB)),
                                        borderRadius:
                                            BorderRadius.circular(6.02),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const ImageIcon(
                                              AssetImage(AssetsData.calendar),
                                              size: 24,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "17 Jul 2021",
                                              style: StylesData.font16.copyWith(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: LineWidget(),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Row(
                                          children: [
                                            const ImageIcon(
                                              AssetImage(AssetsData.clock),
                                              size: 24,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "5:00 pm         to        6:00 pm",
                                              style: StylesData.font16.copyWith(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: defaultButton(
                                            fun: () {
                                              Navigator.pop(context);
                                            },
                                            textWidget: Text(
                                              "Cancel",
                                              style: StylesData.font16
                                                  .copyWith(color: kMainColor),
                                            ),
                                            c: Colors.white),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: defaultButton(
                                            fun: () {
                                              NavegatorPush(
                                                context,
                                                const MyBookingView(),
                                              );
                                            },
                                            textWidget: Text(
                                              "Apply",
                                              style: StylesData.font16.copyWith(
                                                  color: Colors.white),
                                            ),
                                            c: kMainColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )).whenComplete(() {
                    print('Hey there, I\'m calling after hide bottomSheet');
                  });
                },
                textWidget: Text(
                  "view booking",
                  style: StylesData.font14.copyWith(color: Colors.white),
                ),
                height: 38,
                width: 218,
                c: kMainColor),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
