import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/styles.dart';

class facilitiesIcons extends StatelessWidget {
  const facilitiesIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
                width: 51,
                height: 54,
                padding: const EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Image(
                  image: AssetImage(AssetsData.ball),
                  width: 31,
                  height: 31,
                ),
              ),
              Text(
                "Ball",
                style: StylesData.font10.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
                width: 51,
                height: 54,
                padding: const EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Image(
                  image: AssetImage(AssetsData.tShirt),
                  width: 31,
                  height: 31,
                ),
              ),
              Text(
                "Bibs",
                style: StylesData.font10.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
                width: 51,
                height: 54,
                padding: const EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Image(
                  image: AssetImage(AssetsData.water),
                  width: 31,
                  height: 31,
                ),
              ),
              Text(
                "Water",
                style: StylesData.font10.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
                width: 51,
                height: 54,
                padding: const EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Image(
                  image: AssetImage(AssetsData.to),
                  width: 31,
                  height: 31,
                ),
              ),
              Text(
                "Toilets",
                style: StylesData.font10.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
