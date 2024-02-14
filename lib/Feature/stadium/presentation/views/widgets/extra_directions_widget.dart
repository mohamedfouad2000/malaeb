import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/styles.dart';

class ExtraDirections extends StatelessWidget {
  const ExtraDirections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          "For Extra Directions, Please Call 77377380.",
          style: StylesData.font13.copyWith(color: Colors.black),
        ));
  }
}
