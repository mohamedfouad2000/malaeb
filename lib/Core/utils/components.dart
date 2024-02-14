import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Core/widgets/line_wid.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/faq_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/notification_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/privacy_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/profile_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/settings_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/terms_screen.dart';
import 'package:malaeb/Feature/payment/presentation/views/payment_view.dart';
import 'package:malaeb/Feature/payment/presentation/views/screens/my_booking_screen.dart';

Widget defaultButton({
  required VoidCallback fun,
  required textWidget,
  required Color c,
  double radius = 8,
  double height = 50,
  double width = double.infinity,
}) =>
    InkWell(
      onTap: () {
        fun();
      },
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(
            radius,
          ),
          border: Border.all(
            color: kMainColor, //                   <--- border color
          ),
        ),
        child: Center(
          child: textWidget,
        ),
      ),
    );

Widget customTextFiled(
        {required TextEditingController controller,
        TextInputType type = TextInputType.name,
        Widget? prefixIcon,
        var ontapFun,
        bool enabled = true,
        int maxLines = 1}) =>
    TextField(
      enabled: enabled,
      controller: controller,
      onTap: ontapFun,
      onSubmitted: (v) {
        ontapFun;
      },
      maxLines: maxLines,
      keyboardType: type,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        prefixIcon: prefixIcon,

        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(0xFF85C240),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(0xFF85C240),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(0xFF85C240),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        // labelText: 'Password',
      ),
    );
Widget customTextFormedFiled({
  required controller,
  TextInputType type = TextInputType.name,
  Widget? preicon,
  bool obscureText = false,
  String val = "",
  Widget? sufficon,
  String? hintText,
  Function(String)? onChanged,
  Function()? onTap,
  var sufFunction,
  double rad = 4,
  // required void Function()? onPressed,
}) =>
    TextFormField(
      onChanged: onChanged,
      onTap: onTap,
      controller: controller,
      obscureText: obscureText,
      keyboardType: type,
      validator: (value) {
        if (value != null && value.isEmpty) {
          return "   $val";
        } else {
          return null;
        }
      },
      style: StylesData.font12,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        hintText: hintText,
        prefixIcon: preicon,
        suffixIcon: sufficon,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFF85C240),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(rad),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xFF85C240)),
          borderRadius: BorderRadius.all(
            Radius.circular(rad),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff939191),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(rad),
          ),
        ),

        // labelText: 'Password',
      ),
    );

// void showToast({
//   required msg,
// }) =>
//     Fluttertoast.showToast(
//         msg: msg,
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: kMainColor,
//         textColor: Colors.white,
//         fontSize: 16.0);

NavegatorPush(context, page) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (builder) => page),
  );
}

Nav(context, page) {
  return Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (builder) => page), (route) => false);
}

Color colorHex(String color) {
  return Color(int.parse(color.substring(1, 7), radix: 16) + 0xFF000000);
}

AppBar customAppBar(
  BuildContext context,
) {
  return AppBar(
    surfaceTintColor: Colors.white,
    leadingWidth: 50,
    centerTitle: true,
    title: const Image(
      image: AssetImage(AssetsData.appLogo),
      width: 90,
      height: 29,
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
  );
}

Row mobileFiled(
    {required TextEditingController phone,
    required TextEditingController cont}) {
  return Row(
    children: [
      Flexible(
          flex: 2,
          child: customTextFormedFiled(
              controller: phone,
              hintText: '+20',
              type: TextInputType.number,
              preicon: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Image(
                  image: AssetImage(
                    AssetsData.country,
                  ),
                  width: 18,
                  height: 13.10,
                ),
              ))),
      const SizedBox(
        width: 8,
      ),
      Flexible(
        flex: 5,
        child: customTextFormedFiled(
          type: TextInputType.phone,
          controller: cont,
          hintText: '1027627101',
          preicon: const Padding(
            padding: EdgeInsets.all(12.0),
            child: ImageIcon(
              AssetImage(AssetsData.phone),
              size: 10,
            ),
          ),
        ),
      ),
    ],
  );
}

AppBar customAppBarwithtitle(BuildContext context, String title) {
  return AppBar(
    surfaceTintColor: Colors.white,
    leadingWidth: 50,
    centerTitle: true,
    title: Text(
      title,
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
  );
}

Drawer myDrawer(context) {
  return Drawer(
    child: Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: StylesData.font18.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            const LineWidget(),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(AssetsData.man),
                radius: 45,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                "Mohamed abdo",
                style: StylesData.font18.copyWith(color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                "+61 0404 123 456",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF6E7177),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.personicon),
                size: 20,
              ),
              onTap: () {
                NavegatorPush(context, const ProfileScreen());
              },
              title: Text(
                "My account",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.notification),
                size: 20,
              ),
              onTap: () {
                NavegatorPush(context, const NotificationScreen());
              },
              title: Text(
                "notification",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.booking),
                size: 20,
              ),
              onTap: () {
                NavegatorPush(context, const MyBookingView());
              },
              title: Text(
                "Booking",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.cards),
                size: 20,
              ),
              onTap: () {
                NavegatorPush(context, const PaymentView());
              },
              title: Text(
                "payment",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.setting),
                size: 20,
              ),
              onTap: () {
                NavegatorPush(context, const SettingView());
              },
              title: Text(
                "setting",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.privacy),
                size: 20,
              ),
              onTap: () {
                NavegatorPush(context, const PrivacyScreen());
              },
              title: Text(
                "Privacy and safety",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.terms),
                size: 20,
              ),
              onTap: () {
                NavegatorPush(context, const TermsScreen());
              },
              title: Text(
                "terms & conditions",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.faq),
                size: 20,
              ),
              onTap: () {
                NavegatorPush(context, const FaqScreen());
              },
              title: Text(
                "faq",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(AssetsData.logout),
                size: 20,
              ),
              onTap: () {},
              title: Text(
                "logout",
                style: StylesData.font16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    ),
  );
}
