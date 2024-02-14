import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/login/presentation/views/widgets/login_view_page_body.dart';

class LoginViewPage extends StatelessWidget {
  const LoginViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController cont = TextEditingController();
    return Scaffold(
      appBar: customAppBar(context),
      body: LoginPageViewBody(phone: phone, password: password, cont: cont),
    );
  }
}
