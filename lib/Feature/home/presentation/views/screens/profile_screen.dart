import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameCont = TextEditingController();
    final TextEditingController lastNameCont = TextEditingController();
    final TextEditingController phoneNumberNameCont = TextEditingController();
    final TextEditingController passwordCont = TextEditingController();
    return Scaffold(
      appBar: customAppBarwithtitle(context, 'My account'),
      body: ProfileScreenBody(
          firstNameCont: firstNameCont,
          lastNameCont: lastNameCont,
          phoneNumberNameCont: phoneNumberNameCont,
          passwordCont: passwordCont),
    );
  }
}
