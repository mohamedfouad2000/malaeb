import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Starting From",
              style: StylesData.font14,
            ),
            Text(
              "25 BHD",
              style: StylesData.font28,
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          width: 159,
          height: 49,
          child: defaultButton(
              fun: () {},
              textWidget: Text(
                "Book Now",
                style: StylesData.font16.copyWith(color: Colors.white),
              ),
              c: kMainColor),
        )
      ],
    );
  }
}
