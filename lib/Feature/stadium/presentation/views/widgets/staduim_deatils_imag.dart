import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';

class StadiumDeatilsImg extends StatelessWidget {
  const StadiumDeatilsImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.zero,
          decoration: const ShapeDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AssetsData.stad,
              ),
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: kMainColor,
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {
                // Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: kMainColor,
                child: const Center(
                  child: ImageIcon(
                    AssetImage(AssetsData.share),
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
