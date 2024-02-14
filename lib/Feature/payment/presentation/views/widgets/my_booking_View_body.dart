import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/booking_history_widget.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/share_time_widget.dart';

class MyBookingViewBody extends StatelessWidget {
  const MyBookingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upcomming Booking",
                    style: StylesData.font16.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ShareTimeWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Booking History",
                    style: StylesData.font16.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const BookingHistoryWidget(),
                ],
              ),
            ),
          ],
        ));
  }
}
