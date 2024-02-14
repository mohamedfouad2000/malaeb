import 'package:flutter/material.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/stad_item_widget.dart';

class StadListWidget extends StatelessWidget {
  const StadListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (BuildContext context, int index) {
        return const StadItemidget();
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
