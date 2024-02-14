import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Core/widgets/line_wid.dart';
import 'package:flutter_switch/flutter_switch.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _switchValue = true;
  bool _switchValue2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leadingWidth: 50,
        centerTitle: true,
        title: Text(
          'Additional Filters',
          style: StylesData.font18,
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: kMainColor,
              child: const Center(
                child: Icon(
                  Icons.arrow_back_outlined,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "clear all",
                style: StylesData.font12,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LineWidget(),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "Select Duration",
              style: StylesData.font16.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    // width: 99,
                    // height: 33,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF85C240),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    child: Text(
                      "60 minutes",
                      style: StylesData.font13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    // width: 99,
                    // height: 33,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF6E7177)),
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "120 minutes",
                        style: StylesData.font13.copyWith(
                          color: const Color(0xFF6E7177),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF6E7177)),
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "90 minutes",
                        style: StylesData.font13.copyWith(
                          color: const Color(0xFF6E7177),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const LineWidget(),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  "indoor stadium only",
                  style: StylesData.font16.copyWith(
                    color: const Color(0xFF6E7177),
                  ),
                ),
                const Spacer(),
                FlutterSwitch(
                  width: 36,
                  height: 20,
                  value: _switchValue,
                  padding: 2.0,
                  toggleSize: 16.0,
                  activeColor: kMainColor,
                  onToggle: (val) {
                    setState(() {
                      _switchValue = val;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Text(
                  "privacy friendly stadiums only",
                  style: StylesData.font16.copyWith(
                    color: const Color(0xFF6E7177),
                  ),
                ),
                const Spacer(),
                FlutterSwitch(
                  width: 36,
                  height: 20,
                  value: _switchValue2,
                  padding: 2.0,
                  toggleSize: 16.0,
                  activeColor: kMainColor,
                  onToggle: (val) {
                    setState(() {
                      _switchValue2 = val;
                    });
                  },
                ),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: defaultButton(
                  fun: () {},
                  width: 171,
                  height: 38,
                  radius: 58,
                  textWidget: Text(
                    "Apply",
                    style: StylesData.font11.copyWith(color: Colors.white),
                  ),
                  c: kMainColor),
            )
          ],
        ),
      ),
    );
  }
}
