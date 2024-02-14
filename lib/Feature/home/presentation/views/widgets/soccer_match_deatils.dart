import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/soccer_match_imag.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/user_widget.dart';
import 'package:malaeb/Feature/payment/presentation/views/payment_view.dart';

class SoccerMatchDeatils extends StatelessWidget {
  const SoccerMatchDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                // height: 76,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 8,
                  right: 8,
                  bottom: 16,
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      const AssetImage(AssetsData.timer),
                      size: 24,
                      color: kMainColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "30 mar 2023",
                          style:
                              StylesData.font16.copyWith(color: Colors.black),
                        ),
                        Text(
                          "04:00 pm - 11:59 PM",
                          style:
                              StylesData.font12.copyWith(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                // height: 76,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 8,
                  right: 8,
                  bottom: 16,
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      const AssetImage(AssetsData.people),
                      size: 24,
                      color: kMainColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Age Group",
                          style:
                              StylesData.font16.copyWith(color: Colors.black),
                        ),
                        Text(
                          "all",
                          style:
                              StylesData.font12.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                // height: 131,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 8,
                  right: 8,
                  bottom: 16,
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      const AssetImage(AssetsData.dollarCircle),
                      size: 24,
                      color: kMainColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "23.00 SAR",
                          style:
                              StylesData.font16.copyWith(color: Colors.black),
                        ),
                        Text(
                          "fee per player",
                          style:
                              StylesData.font12.copyWith(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "تمرين متاح للجميع",
                          style: StylesData.font10.copyWith(
                            color: const Color(0xFF6E7177),
                          ),
                        ),
                        Text(
                          "يرجي تأكيد الحضور في الخاص",
                          style: StylesData.font10.copyWith(
                            color: const Color(0xFF6E7177),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                // height: 76,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 8,
                  right: 8,
                  bottom: 16,
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      const AssetImage(AssetsData.stadSel),
                      size: 24,
                      color: kMainColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ملاعب فيا",
                          style:
                              StylesData.font16.copyWith(color: Colors.black),
                        ),
                        Text(
                          "Al Masa",
                          style:
                              StylesData.font12.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Image(
                          image: AssetImage(AssetsData.d),
                          width: 24,
                          height: 24,
                        ),
                        Text(
                          "Directions",
                          style: StylesData.font12.copyWith(color: kMainColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                // height: 60,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: ShapeDecoration(
                  color: const Color(0xFFDBDBDB),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "joined players",
                      style: StylesData.font14.copyWith(color: Colors.black),
                    ),
                    Text(
                      "7 out of 10 player are going",
                      style: StylesData.font11.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const UserRowWidget(
                bacColor: Colors.white, textColor: Colors.black),
            const SizedBox(
              height: 8,
            ),
            const UserRowWidget(
                bacColor: Colors.white, textColor: Colors.black),
            const SizedBox(
              height: 8,
            ),
            const UserRowWidget(
                bacColor: Colors.white, textColor: Colors.black),
            const SizedBox(
              height: 8,
            ),
            const UserRowWidget(
                bacColor: Colors.white, textColor: Colors.black),
            const SizedBox(
              height: 8,
            ),
            const UserRowWidget(
                bacColor: Colors.white, textColor: Colors.black),
            const SizedBox(
              height: 24,
            ),
            Container(
              // height: 140,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
              decoration: const BoxDecoration(color: Color(0xFF85C240)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "price SAR",
                        style: StylesData.font25,
                      ),
                      Text("23.00", style: StylesData.font24),
                      Text(
                        "per player",
                        style: StylesData.font14.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 150,
                    height: 49,
                    child: defaultButton(
                      fun: () {
                        NavegatorPush(context, const PaymentView());
                      },
                      textWidget: Text(
                        "join Now",
                        style: StylesData.font16.copyWith(color: kMainColor),
                      ),
                      c: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
