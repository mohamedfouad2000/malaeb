import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Core/widgets/line_wid.dart';

class FaqScreenBody extends StatelessWidget {
  const FaqScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GFAccordion(
          title: "Where can I watch?",
          contentChild: Text(
            "So yes, the alcohol (ethanol) in hand sanitizers can be absorbed through the skin, but no, it would not cause intoxication.",
            style: StylesData.font16.copyWith(
              color: const Color(0xD83C3C43),
            ),
          ),
          textStyle: StylesData.font16.copyWith(color: Colors.black),
          expandedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
          collapsedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
        ),
        const LineWidget(),
        GFAccordion(
          title: "Table Tennis Rules Assignment",
          contentChild: Text(
            "",
            style: StylesData.font16.copyWith(
              color: const Color(0xD83C3C43),
            ),
          ),
          textStyle: StylesData.font16.copyWith(color: Colors.black),
          expandedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
          collapsedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
        ),
        const LineWidget(),
        GFAccordion(
          title: "Summer homework",
          contentChild: Text(
            "",
            style: StylesData.font16.copyWith(
              color: const Color(0xD83C3C43),
            ),
          ),
          textStyle: StylesData.font16.copyWith(color: Colors.black),
          expandedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
          collapsedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
        ),
        const LineWidget(),
        GFAccordion(
          title: "Cous Cous",
          contentChild: Text(
            "",
            style: StylesData.font16.copyWith(
              color: const Color(0xD83C3C43),
            ),
          ),
          textStyle: StylesData.font16.copyWith(color: Colors.black),
          expandedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
          collapsedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
        ),
        const LineWidget(),
        GFAccordion(
          title: "Language exam papers",
          contentChild: Text(
            "",
            style: StylesData.font16.copyWith(
              color: const Color(0xD83C3C43),
            ),
          ),
          textStyle: StylesData.font16.copyWith(color: Colors.black),
          expandedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
          collapsedIcon: CircleAvatar(
            radius: 12,
            backgroundColor: kMainColor,
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
        ),
        const LineWidget(),
      ],
    );
  }
}



// 