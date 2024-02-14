import 'package:flutter/material.dart';

import 'package:malaeb/Core/widgets/line_wid.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/calendar_widget.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/select_time_widget.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/sports_buttons_widgets.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/stad_list_widget.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/stadium_search_item.dart';

class StadiumsScreen extends StatelessWidget {
  const StadiumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchCont = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: stadumItem(searchCont: searchCont)),
          const StadListWidget(),
        ],
      ),
    );
  }

  Column stadumItem({required TextEditingController searchCont}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StadiumSearchItem(searchCont: searchCont),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          height: 40,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, child: SportsButtonWidgets()),
        ),
        const SizedBox(
          height: 16,
        ),
        const LineWidget(),
        const SizedBox(
          height: 16,
        ),
        const CalenderWidget(),
        const SizedBox(
          height: 16,
        ),
        const LineWidget(),
        const SizedBox(
          height: 16,
        ),
        const SelectTimeWidgets(),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
