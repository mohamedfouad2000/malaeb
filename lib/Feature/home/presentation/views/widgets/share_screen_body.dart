import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/share_link_widget.dart';
import 'package:malaeb/Feature/home/presentation/views/widgets/share_time_widget.dart';

class ShareScreenBody extends StatelessWidget {
  const ShareScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShareTimeWidget(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Share A Link",
              style: StylesData.font16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            const ShareAlinkWidget(),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Send On Maleeb",
              style: StylesData.font16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            customTextFormedFiled(
                controller: TextEditingController(),
                preicon: const Icon(Icons.search),
                hintText: 'Search')
          ],
        ),
      ),
    );
  }
}
