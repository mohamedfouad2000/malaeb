import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/confirmed_screen.dart';

class AddCreditCardBody extends StatefulWidget {
  const AddCreditCardBody(
      {super.key,
      required this.nameCont,
      required this.streetCont,
      required this.stateCont,
      required this.cityCont,
      required this.postalCont});
  final TextEditingController nameCont;
  final TextEditingController streetCont;
  final TextEditingController stateCont;
  final TextEditingController cityCont;
  final TextEditingController postalCont;

  @override
  State<AddCreditCardBody> createState() => _AddCreditCardBodyState();
}

class _AddCreditCardBodyState extends State<AddCreditCardBody> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            customTextFormedFiled(
                controller: widget.nameCont, hintText: 'Full Name'),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Street Address",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            customTextFormedFiled(
                controller: widget.streetCont, hintText: 'Street Address'),
            const SizedBox(
              height: 16,
            ),
            Text(
              "State",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            customTextFormedFiled(
                controller: widget.stateCont, hintText: 'State'),
            const SizedBox(
              height: 16,
            ),
            Text(
              "City",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            customTextFormedFiled(
                controller: widget.cityCont, hintText: 'City'),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Postal Code",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            customTextFormedFiled(
                controller: widget.postalCont, hintText: "Postal Code"),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
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
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "SET AS DEFAULT",
                  style: StylesData.font11.copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: defaultButton(
                      fun: () {},
                      height: 49,
                      textWidget: Text(
                        "delete",
                        style: StylesData.font14.copyWith(color: kMainColor),
                      ),
                      c: Colors.white),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: defaultButton(
                      fun: () {
                        NavegatorPush(context, const ConfirmedScreen());
                      },
                      height: 49,
                      textWidget: Text(
                        "save",
                        style: StylesData.font14.copyWith(color: Colors.white),
                      ),
                      c: kMainColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
