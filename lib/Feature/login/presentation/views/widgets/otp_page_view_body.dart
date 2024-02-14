import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/size_config.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/home_page_view.dart';

class OtpViewPageBody extends StatefulWidget {
  const OtpViewPageBody({super.key});

  @override
  State<OtpViewPageBody> createState() => _OtpViewPageBodyState();
}

class _OtpViewPageBodyState extends State<OtpViewPageBody> {
  Timer? timer;
  int start = 60;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Confirmation Code",
            style: StylesData.font26,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Please Enter The Code We Sent You On",
            style: StylesData.font16.copyWith(color: Colors.black),
          ),
          Text(
            "+201098765432",
            style: StylesData.font16.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: OtpTextField(
              fieldWidth: SizeConfig.screenWidth! / 8,
              crossAxisAlignment: CrossAxisAlignment.start,

              numberOfFields: 6,
              fillColor: kMainColor,
              enabledBorderColor: const Color(0xFF6E7177),
              focusedBorderColor: kMainColor,
              borderWidth: 1.09,

              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in

              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
          ),
          defaultButton(
              fun: () {
                NavegatorPush(context, const HomePageView());
              },
              textWidget: Text(
                "Confirm",
                style: StylesData.font16.copyWith(color: Colors.white),
              ),
              c: kMainColor),
          const SizedBox(
            height: 24,
          ),
          Center(
              child: Text('Resend New Code After: $start',
                  style: StylesData.font16)),
        ],
      ),
    );
  }
}
