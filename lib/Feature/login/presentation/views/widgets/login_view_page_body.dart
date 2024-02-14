import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/size_config.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/login/presentation/views/widgets/otp_page_view.dart';

class LoginPageViewBody extends StatefulWidget {
  const LoginPageViewBody(
      {super.key,
      required this.phone,
      required this.password,
      required this.cont});
  final TextEditingController phone;
  final TextEditingController password;
  final TextEditingController cont;

  @override
  State<LoginPageViewBody> createState() => _LoginPageViewBodyState();
}

class _LoginPageViewBodyState extends State<LoginPageViewBody> {
  bool textOb = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                image: const AssetImage(AssetsData.login),
                height: SizeConfig.screenHeight! * .30,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Sign In",
              style: StylesData.font26,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "This Helps Us Confirm Your Identity And Secure Your Account",
              style: StylesData.font16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            mobileFiled(cont: widget.cont, phone: widget.phone),
            const SizedBox(
              height: 15,
            ),
            customTextFormedFiled(
              controller: widget.password,
              hintText: 'Password',
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
              height: 15,
            ),
            defaultButton(
                fun: () {
                  NavegatorPush(context, const OtpViewPage());
                },
                textWidget: Text(
                  "Continue",
                  style: StylesData.font16.copyWith(color: Colors.white),
                ),
                c: kMainColor),
          ],
        ),
      ),
    );
  }
}
