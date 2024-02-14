import 'package:flutter/material.dart';

import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/category_widget_view.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/match_near_widget.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/matches_near_card.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "what are you looking for?",
              style: StylesData.font18,
            ),
            const SizedBox(
              height: 16,
            ),
            const CategoryWidgetView(),
            const MatchNearTitle(),
            const MatchesNearCard(),
          ],
        ),
      ),
    );
  }
}
