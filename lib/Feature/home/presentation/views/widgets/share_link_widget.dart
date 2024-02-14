import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/styles.dart';

class ShareAlinkWidget extends StatelessWidget {
  const ShareAlinkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            // width: 100,
            // height: 103,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: const Color(0x6685C240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Image(
                    image: AssetImage(
                      AssetsData.whatsapp,
                    ),
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Whatsapp",
                  style: StylesData.font12
                      .copyWith(color: const Color(0xFF6E7177)),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            // width: 100,
            // height: 103,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: const Color(0x6685C240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Image(
                    image: AssetImage(
                      AssetsData.link,
                    ),
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Copy",
                  style: StylesData.font12
                      .copyWith(color: const Color(0xFF6E7177)),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: const Color(0x6685C240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Image(
                    image: AssetImage(
                      AssetsData.more,
                    ),
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "More",
                  style: StylesData.font12
                      .copyWith(color: const Color(0xFF6E7177)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
