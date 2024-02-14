import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';

class SelectTimeWidgets extends StatefulWidget {
  const SelectTimeWidgets({super.key});

  @override
  State<SelectTimeWidgets> createState() => _SelectTimeWidgetsState();
}

class _SelectTimeWidgetsState extends State<SelectTimeWidgets> {
  RangeValues _currentRangeValues = const RangeValues(2, 8);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Time",
          style: StylesData.font16.copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              '12:00 am',
              style: StylesData.font14,
            ),
            const Spacer(),
            Text(
              '11:30 am',
              style: StylesData.font14,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        RangeSlider(
          activeColor: kMainColor,
          values: _currentRangeValues,
          max: 10,
          divisions: 5,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: kMainColor,
              ),
              CircleAvatar(
                radius: 16,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: kMainColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
