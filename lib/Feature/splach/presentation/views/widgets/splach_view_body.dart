import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage(
          AssetsData.splachLogo,
        ),
        height: 55,
        width: 170,
      ),
    );
  }
}
