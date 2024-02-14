import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Core/widgets/line_wid.dart';

class SettingViewBody extends StatefulWidget {
  const SettingViewBody({super.key});

  @override
  State<SettingViewBody> createState() => _SettingViewBodyState();
}

class _SettingViewBodyState extends State<SettingViewBody> {
  bool _switchValue = false;
  bool _switchValue2 = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Language Setting",
                style: StylesData.font14,
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 21,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          const LineWidget(),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                "Dark Mode",
                style: StylesData.font14,
              ),
              const Spacer(),
              FlutterSwitch(
                width: 36.29,
                height: 21.77,
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
            height: 7,
          ),
          const LineWidget(),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                "Push Notification",
                style: StylesData.font14,
              ),
              const Spacer(),
              FlutterSwitch(
                width: 36.29,
                height: 21.77,
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
          const SizedBox(
            height: 7,
          ),
          const LineWidget(),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                "App Info",
                style: StylesData.font14,
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 21,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          const LineWidget(),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                "App Version",
                style: StylesData.font14,
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 21,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          const LineWidget(),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
