import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';

class BookingHistoryWidget extends StatelessWidget {
  const BookingHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 180,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      const CircleAvatar(
                        radius: 13.5,
                        backgroundColor: Colors.brown,
                      ),
                      const Positioned(
                        left: 20,
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: Colors.red,
                        ),
                      ),
                      const Positioned(
                        left: 40,
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: Colors.black,
                        ),
                      ),
                      const Positioned(
                        left: 60,
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      Positioned(
                        left: 80,
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: Colors.black,
                          child: Text(
                            '+16',
                            textAlign: TextAlign.center,
                            style: StylesData.font10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 60,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 8,
                      color: kMainColor,
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      height: 8,
                      color: const Color(0xFFC9EAD1),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text('7 out of 19',
                        textAlign: TextAlign.end,
                        style: StylesData.font12.copyWith(color: Colors.black)),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 28.5,
                        backgroundColor: Colors.red,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "نايف ,, ابو بدر",
                        style: StylesData.font10.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "today, 30/03",
                        style: StylesData.font16.copyWith(color: Colors.black),
                      ),
                      Row(
                        children: [
                          const ImageIcon(
                            AssetImage(
                              AssetsData.clock,
                            ),
                            size: 14,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "09:30 am",
                            style:
                                StylesData.font10.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const ImageIcon(
                            AssetImage(AssetsData.location),
                            size: 14,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "ملاعب فيا, d..",
                            style:
                                StylesData.font10.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 12,
          right: 1,
          child: Column(
            children: [
              Text(
                "23.00 SAR",
                style: StylesData.font20,
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: defaultButton(
                    fun: () {
                      // Navigator.pop(context);
                    },
                    textWidget: Text(
                      "View",
                      style: StylesData.font13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    c: kMainColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
