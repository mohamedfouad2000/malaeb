import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/size_config.dart';
import 'package:malaeb/Core/utils/styles.dart';

Widget pageViewItem({
  required String image,
  required String title,
  required String subTitle,
}) =>
    Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * .42,
          child: Center(
              child: Image.asset(
            image,
            // fit: BoxFit.scaleDown,
          )),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 1,
          style: StylesData.font26,
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: 257,
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: StylesData.font16.copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
