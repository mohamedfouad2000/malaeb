import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody(
      {super.key,
      required this.firstNameCont,
      required this.lastNameCont,
      required this.phoneNumberNameCont,
      required this.passwordCont});
  final TextEditingController firstNameCont;
  final TextEditingController lastNameCont;
  final TextEditingController phoneNumberNameCont;
  final TextEditingController passwordCont;

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  bool textOb = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.topRight,
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(AssetsData.man),
                  ),
                  Positioned(
                    right: -10,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 32,
                        height: 32,
                        padding: const EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF85C240),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "First Name",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 9,
            ),
            customTextFormedFiled(controller: widget.firstNameCont),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Last Name",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 9,
            ),
            customTextFormedFiled(controller: widget.lastNameCont),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Phone Number",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 9,
            ),
            customTextFormedFiled(
                controller: widget.phoneNumberNameCont,
                type: TextInputType.phone),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Password",
              style: StylesData.font13.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 9,
            ),
            customTextFormedFiled(
              controller: widget.passwordCont,
              obscureText: textOb,
              sufficon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        textOb = !textOb;
                      });
                    },
                    child: textOb
                        ? const ImageIcon(
                            AssetImage(AssetsData.eyesRemove),
                            size: 10,
                          )
                        : const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xff939191),
                            size: 18,
                          )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: defaultButton(
                        fun: () {},
                        height: 49,
                        textWidget: Text(
                          "Delete",
                          style: StylesData.font14.copyWith(color: kMainColor),
                        ),
                        c: Colors.white),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: defaultButton(
                        fun: () {},
                        height: 49,
                        textWidget: Text(
                          "Save",
                          style:
                              StylesData.font14.copyWith(color: Colors.white),
                        ),
                        c: kMainColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
