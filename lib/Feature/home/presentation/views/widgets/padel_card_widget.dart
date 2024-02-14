import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Core/widgets/line_cliped_wid.dart';

class PadelCard extends StatelessWidget {
  const PadelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 185,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Thu',
                style: StylesData.font17.copyWith(color: Colors.black),
              ),
              Text(
                '30th',
                style: StylesData.font17,
              ),
              Text(
                'Mar',
                style: StylesData.font17,
              ),
              ImageIcon(
                const AssetImage(
                  AssetsData.medalStar,
                ),
                size: 20,
                color: kMainColor,
              ),
              Text(
                'intermediate',
                style: StylesData.font14.copyWith(color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          const LineClipedWidget(),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'padel club',
                style: StylesData.font13.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  const ImageIcon(
                    AssetImage(AssetsData.clock),
                    size: 14,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "04:00 - 09:30 Am",
                    style: StylesData.font10.copyWith(color: Colors.black),
                  )
                ],
              ),
              Row(
                children: [
                  const ImageIcon(
                    AssetImage(AssetsData.location),
                    size: 14,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Dammam",
                    style: StylesData.font10.copyWith(color: Colors.black),
                  )
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              // const Spacer(),
              Row(
                children: [
                  const ImageIcon(
                    AssetImage(AssetsData.dollar),
                    size: 14,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "47.5 SAR",
                        style: StylesData.font10.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Per Player",
                        style: StylesData.font10.copyWith(color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DottedBorder(
                      padding: const EdgeInsets.all(10),
                      color: kMainColor,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(40000000),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40000000),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add_circle_outline,
                            color: kMainColor,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    DottedBorder(
                      padding: const EdgeInsets.all(10),
                      color: kMainColor,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(40000000),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40000000),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add_circle_outline,
                            color: kMainColor,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DottedBorder(
                      padding: const EdgeInsets.all(10),
                      color: kMainColor,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(40000000),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40000000),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add_circle_outline,
                            color: kMainColor,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    DottedBorder(
                      color: kMainColor,
                      padding: const EdgeInsets.all(10),
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(40000000),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40000000),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add_circle_outline,
                            color: kMainColor,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 9,
                ),
                // const Spacer(),
                SizedBox(
                  width: 80.94,
                  height: 35,
                  child: defaultButton(
                      fun: () {},
                      radius: 50,
                      textWidget: Text(
                        "view",
                        style: StylesData.font11.copyWith(color: Colors.white),
                      ),
                      c: kMainColor),
                ),
              ],
            ),
          ),

          // Expanded(
          //   child: Column(
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           const CircleAvatar(
          //             backgroundColor: Colors.red,
          //             radius: 20,
          //           ),
          //           const SizedBox(
          //             width: 8,
          //           ),
          //           DottedBorder(
          //             color: kMainColor,
          //             borderType: BorderType.RRect,
          //             radius: const Radius.circular(40),
          //             child: ClipRRect(
          //               borderRadius: const BorderRadius.all(
          //                 Radius.circular(40),
          //               ),
          //               child: IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(
          //                   Icons.add_circle_outline,
          //                   color: kMainColor,
          //                   size: 20,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       const SizedBox(
          //         height: 9,
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           DottedBorder(
          //             color: kMainColor,
          //             borderType: BorderType.RRect,
          //             radius: const Radius.circular(40),
          //             child: ClipRRect(
          //               borderRadius: const BorderRadius.all(
          //                 Radius.circular(40),
          //               ),
          //               child: IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(
          //                   Icons.add_circle_outline,
          //                   color: kMainColor,
          //                 ),
          //               ),
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 8,
          //           ),
          //           DottedBorder(
          //             color: kMainColor,
          //             borderType: BorderType.RRect,
          //             radius: const Radius.circular(40),
          //             child: ClipRRect(
          //               borderRadius: const BorderRadius.all(
          //                 Radius.circular(40),
          //               ),
          //               child: IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(
          //                   Icons.add_circle_outline,
          //                   color: kMainColor,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       const SizedBox(
          //         height: 9,
          //       ),
          //       SizedBox(
          //         width: 78.94,
          //         height: 29.38,
          //         child: defaultButton(
          //             fun: () {},
          //             radius: 50,
          //             textWidget: Text(
          //               "view",
          //               style: StylesData.font13.copyWith(color: Colors.white),
          //             ),
          //             c: kMainColor),
          //       )
          //     ],
          //   ),
          // )
          // // Row(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     Expanded(
          //       child: Text('7 out of 19',
          //           textAlign: TextAlign.end,
          //           style: StylesData.font12.copyWith(color: Colors.black)),
          //     ),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Column(
          //       children: [
          //         const CircleAvatar(
          //           radius: 28.5,
          //           backgroundColor: Colors.red,
          //         ),
          //         const SizedBox(
          //           height: 2,
          //         ),
          //         Text(
          //           "نايف ,, ابو بدر",
          //           style: StylesData.font10.copyWith(color: Colors.black),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(
          //       width: 25,
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           "today, 30/03",
          //           style: StylesData.font16,
          //         ),
          //         Row(
          //           children: [
          //             const ImageIcon(
          //               AssetImage(
          //                 AssetsData.clock,
          //               ),
          //               size: 14,
          //             ),
          //             const SizedBox(
          //               width: 2,
          //             ),
          //             Text(
          //               "09:30 am",
          //               style: StylesData.font10.copyWith(color: Colors.black),
          //             ),
          //           ],
          //         ),
          //         Row(
          //           children: [
          //             const ImageIcon(
          //               AssetImage(AssetsData.location),
          //               size: 14,
          //             ),
          //             const SizedBox(
          //               width: 2,
          //             ),
          //             Text(
          //               "ملاعب فيا, d..",
          //               style: StylesData.font10.copyWith(color: Colors.black),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //     const Spacer(),
          //     Column(
          //       children: [
          //         Text(
          //           "23.00 SAR",
          //           style: StylesData.font20,
          //         ),
          //         SizedBox(
          //           height: 40,
          //           width: 100,
          //           child: defaultButton(
          //               fun: () {},
          //               textWidget: Text(
          //                 "join us",
          //                 style: StylesData.font13.copyWith(
          //                   color: Colors.white,
          //                 ),
          //               ),
          //               c: kMainColor),
          //         )
          //       ],
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
