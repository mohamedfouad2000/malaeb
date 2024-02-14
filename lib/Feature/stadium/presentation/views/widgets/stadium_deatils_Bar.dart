// import 'package:flutter/material.dart';
// import 'package:malaeb/Core/utils/colors.dart';

// class StadiumDeatailsTabBar extends StatelessWidget {
//   const StadiumDeatailsTabBar({super.key, required this.tabCont});
//   final TabController tabCont;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: TabBar(
//               controller: tabCont,
//               indicatorColor: kMainColor,
//               // automaticIndicatorColorAdjustment: false,
//               splashBorderRadius: const BorderRadius.all(Radius.circular(10)),
//               labelColor: kMainColor,
//               indicator: BoxDecoration(
//                 border: Border(
//                   bottom: BorderSide(
//                     color: kMainColor, // Set the color of the line
//                     width: 2.0, // Set the width of the line
//                   ),
//                 ),
//               ),
//               tabs: const [
//                 Tab(
//                   child: Text(
//                     "Details",
//                   ),
//                 ),
//                 Tab(
//                   child: Text(
//                     "leaderboard",
//                   ),
//                 ),
//                 Tab(
//                   child: Text(
//                     "leaderboard",
//                   ),
//                 ),
//               ]),
//         ),
//         Expanded(
//             child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: TabBarView(
//             controller: tabCont,
//             children: [
//               Container(),
//               Container(),
//             ],
//           ),
//         ))
//       ],
//     );
//   }
// }
