import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/styles.dart';

class MatchNearTitle extends StatelessWidget {
  const MatchNearTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Matches Near",
            style: StylesData.font18,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "View All",
              style: StylesData.font16,
            ))
      ],
    );
  }
}
