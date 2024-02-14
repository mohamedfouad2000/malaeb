import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/calendar_card_item_wid.dart';
import 'package:malaeb/Feature/home/data/models/calendar_model.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'All',
                  textAlign: TextAlign.center,
                  style: StylesData.font12,
                ),
                Text(
                  'Dates',
                  textAlign: TextAlign.center,
                  style: StylesData.font12,
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            height: 48,
            color: const Color(0xFFDBDBDB),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: calendar.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return calendarCardItem(
                    daynum: calendar[index].daynum,
                    daytxt: calendar[index].daytxt,
                    isActive: calendar[index].isActive,
                    month: calendar[index].month);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 12,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

List<CalendarModel> calendar = [
  CalendarModel(daynum: 30, daytxt: 'thu', month: 'mar', isActive: false),
  CalendarModel(daynum: 31, daytxt: 'fri', month: 'mar', isActive: true),
  CalendarModel(daynum: 01, daytxt: 'sat', month: 'mar', isActive: false),
  CalendarModel(daynum: 02, daytxt: 'sun', month: 'mar', isActive: false),
  CalendarModel(daynum: 03, daytxt: 'mon', month: 'mar', isActive: false),
  CalendarModel(daynum: 04, daytxt: 'tue', month: 'mar', isActive: false),
  CalendarModel(daynum: 05, daytxt: 'wed', month: 'mar', isActive: false),
];
