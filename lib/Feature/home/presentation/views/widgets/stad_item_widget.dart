import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/stadium/presentation/views/stadium_deatils_view.dart';

class StadItemidget extends StatelessWidget {
  const StadItemidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 245.84,
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 3.97,
        left: 3.97,
        right: 3.97,
        bottom: 9.93,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.99, color: Color(0xFFDBDBDB)),
          borderRadius: BorderRadius.circular(7.94),
        ),
      ),
      child: Column(
        children: [
          const Image(
            image: AssetImage(AssetsData.stad),
            height: 178,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Soccer World',
                    style: StylesData.font15,
                  ),
                  Text(
                    'Riffa',
                    style: StylesData.font10.copyWith(color: Colors.black),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'starting from',
                    style: StylesData.font10.copyWith(
                      color: const Color(0xFF6E7177),
                    ),
                  ),
                  Text(
                    '25 BHD',
                    style: StylesData.font10.copyWith(
                      color: const Color(0xFF6E7177),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: 78.94,
                height: 33.38,
                child: defaultButton(
                    fun: () {
                      NavegatorPush(context, const StadiumDetailsView());
                    },
                    radius: 50,
                    textWidget: Text(
                      "view",
                      style: StylesData.font11.copyWith(color: Colors.white),
                    ),
                    c: kMainColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
