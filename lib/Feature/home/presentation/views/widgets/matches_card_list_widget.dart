import 'package:flutter/material.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/matches_near_card.dart';

class MatchCardListWidget extends StatelessWidget {
  const MatchCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (BuildContext context, int index) {
        return const MatchesNearCard();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 8,
        );
      },
      itemCount: 3,
    );
  }
}
