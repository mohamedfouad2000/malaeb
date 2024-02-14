import 'package:flutter/material.dart';

import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Core/widgets/line_wid.dart';
import 'package:malaeb/Feature/stadium/presentation/views/widgets/booking_widget.dart';
import 'package:malaeb/Feature/stadium/presentation/views/widgets/extra_directions_widget.dart';
import 'package:malaeb/Feature/stadium/presentation/views/widgets/facilities_icons_widget.dart';
import 'package:malaeb/Feature/stadium/presentation/views/widgets/opening_time.dart';
import 'package:malaeb/Feature/stadium/presentation/views/widgets/stadium_location_widget.dart';

class DeatilsScreen extends StatelessWidget {
  const DeatilsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Facilities",
            style: StylesData.font16.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 12,
          ),
          const facilitiesIcons(),
          const SizedBox(
            height: 12,
          ),
          const OpeningTime(),
          const SizedBox(
            height: 12,
          ),
          const StadiumLocationWidget(),
          const SizedBox(
            height: 12,
          ),
          const ExtraDirections(),
          const SizedBox(
            height: 20,
          ),
          const LineWidget(),
          const SizedBox(
            height: 20,
          ),
          const BookingWidget(),
        ],
      ),
    );
  }
}


// directions.png