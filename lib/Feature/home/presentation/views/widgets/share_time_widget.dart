import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/styles.dart';

class ShareTimeWidget extends StatelessWidget {
  const ShareTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 361,
      // height: 230,
      padding: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 118,
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 8,
                  right: 18,
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    opacity: 0.7,
                    image: AssetImage(
                      AssetsData.gool,
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black.withOpacity(0.47999998927116394),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: .5,
                      backgroundColor: const Color(0xFFC9EAD1),
                      valueColor: AlwaysStoppedAnimation<Color>(kMainColor),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "7 players going",
                          style:
                              StylesData.font12.copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        Text(
                          "7 out of 19",
                          style:
                              StylesData.font12.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: kMainColor,
                        ),
                        const CircleAvatar(
                          radius: 13,
                          backgroundImage: AssetImage(AssetsData.test4),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      "30 mar",
                      style: StylesData.font10.copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    Text(
                      "نايف ,, ابو بدر",
                      style: StylesData.font10.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
          Text(
            '09:30 Am',
            style: StylesData.font24.copyWith(color: Colors.black),
          ),
          Text(
            'ملاعب فيا,Almasa ',
            style: StylesData.font10.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
