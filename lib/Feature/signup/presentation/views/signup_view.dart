import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/signup/presentation/views/widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController cont = TextEditingController();

    return Scaffold(
      appBar: customAppBar(context),
      body: SignUpViewBody(
          name: name, cont: cont, phone: phone, password: password),
    );
  }
}
