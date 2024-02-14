import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/payment/presentation/views/widgets/add_credit_card_body.dart';

class AddCreditCardScreen extends StatelessWidget {
  const AddCreditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameCont = TextEditingController();
    TextEditingController streetCont = TextEditingController();
    TextEditingController stateCont = TextEditingController();
    TextEditingController cityCont = TextEditingController();
    TextEditingController postalCont = TextEditingController();

    return Scaffold(
      appBar: customAppBarwithtitle(context, 'Add Credit Card'),
      body: AddCreditCardBody(
          nameCont: nameCont,
          streetCont: streetCont,
          stateCont: stateCont,
          cityCont: cityCont,
          postalCont: postalCont),
    );
  }
}
