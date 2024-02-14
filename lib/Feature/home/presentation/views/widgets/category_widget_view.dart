import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/size_config.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/data/models/category_model.dart';

class CategoryWidgetView extends StatelessWidget {
  const CategoryWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight! * .27,
      width: double.infinity,
      child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: false,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 9.5,
          crossAxisSpacing: 10,
          childAspectRatio: 2,
          children: List.generate(catlist.length, (index) {
            return SizedBox(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage(catlist[index].image),
                        fit: BoxFit.fitWidth,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Container(
                    height: 34,
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(.4),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      catlist[index].title,
                      style: StylesData.font16.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                  ),
                ],
              ),
            );
          })),
    );
  }
}

List<CategoryModel> catlist = [
  CategoryModel(image: AssetsData.test2, title: 'stadiums'),
  CategoryModel(image: AssetsData.test3, title: 'matches'),
  CategoryModel(image: AssetsData.test1, title: 'tournaments'),
  CategoryModel(image: AssetsData.test4, title: 'coaches'),
];
