import 'package:flutter/material.dart';
import 'package:malaeb/Feature/stadium/presentation/views/widgets/stadium_deatils_body_view.dart';

class StadiumDetailsView extends StatelessWidget {
  const StadiumDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StadiumDetailsViewBody(),
    );
  }
}
