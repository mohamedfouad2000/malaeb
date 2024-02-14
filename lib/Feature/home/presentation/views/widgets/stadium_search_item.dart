import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/filter_screen.dart';

class StadiumSearchItem extends StatelessWidget {
  const StadiumSearchItem({super.key, required this.searchCont});
  final TextEditingController searchCont;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: customTextFiled(
                controller: searchCont,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    const AssetImage(
                      AssetsData.search,
                    ),
                    size: 20,
                    color: kMainColor,
                  ),
                ))),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            NavegatorPush(context, const FilterScreen());
          },
          child: Container(
            width: 52,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFF85C240),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            child: const ImageIcon(
              AssetImage(AssetsData.filter),
              size: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
