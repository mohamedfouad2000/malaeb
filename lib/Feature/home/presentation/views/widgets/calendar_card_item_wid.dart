import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';

Container calendarCardItem(
    {required bool isActive,
    required String daytxt,
    required int daynum,
    required String month}) {
  return Container(
    // width: 48,
    height: 87,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    decoration: ShapeDecoration(
      color: isActive ? kMainColor : Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          daytxt.toString().substring(0, 2),
          style: StylesData.font13
              .copyWith(color: isActive ? Colors.white : Colors.black),
        ),
        Text(
          daynum.toString(),
          style: StylesData.font13
              .copyWith(color: isActive ? Colors.white : Colors.black),
        ),
        Text(
          month.toString(),
          style: StylesData.font13
              .copyWith(color: isActive ? Colors.white : Colors.black),
        ),
      ],
    ),
  );
}
