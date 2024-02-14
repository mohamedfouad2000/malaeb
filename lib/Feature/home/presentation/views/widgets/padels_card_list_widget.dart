import 'package:flutter/material.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/padel_card_widget.dart';

class PadelCardListWidget extends StatelessWidget {
  const PadelCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (BuildContext context, int index) {
        return const PadelCard();
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
