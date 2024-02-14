import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/assets_data.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/components.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/activity_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/main_home_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/matches_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/messages_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/notification_screen.dart';
import 'package:malaeb/Feature/home/presentation/views/screens/stadiums_screen.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentind = 1;

  List<Widget> screens = const [
    StadiumsScreen(),
    MatchesScreen(),
    MainHomeScreen(),
    MessagesScreen(),
    ActivityScreen()
  ];
  List<Widget> titleList = [
    Text(
      'Stadiums',
      style: StylesData.font18,
    ),
    Text(
      'Matches',
      style: StylesData.font18,
    ),
    const Image(
      image: AssetImage(AssetsData.appLogo),
      width: 90,
      height: 29,
    ),
    Text(
      'messages',
      style: StylesData.font18,
    ),
    Text(
      'my activity',
      style: StylesData.font18,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(context),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              left: BorderSide(color: Color(0xFF85C240)),
              top: BorderSide(width: 1, color: Color(0xFF85C240)),
              right: BorderSide(color: Color(0xFF85C240)),
              bottom: BorderSide(color: Color(0xFF85C240)),
            ),
          ),
          child: NavigationBar(
            animationDuration: const Duration(seconds: 1),
            indicatorColor: Colors.transparent,
            onDestinationSelected: (value) {
              print(value);
              setState(() {
                currentind = value;
              });
            },
            backgroundColor: Colors.white,
            destinations: [
              CircleAvatar(
                radius: 30,
                backgroundColor:
                    currentind == 0 ? const Color(0x3D85C240) : Colors.white,
                child: NavigationDestination(
                    icon: ImageIcon(
                      const AssetImage(AssetsData.stadSel),
                      size: 27,
                      color: currentind == 0
                          ? kMainColor
                          : const Color(0xFF6E7177),
                    ),
                    label: 'Stadiums'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor:
                    currentind == 1 ? const Color(0x3D85C240) : Colors.white,
                child: NavigationDestination(
                    icon: ImageIcon(
                      const AssetImage(AssetsData.matchSel),
                      size: 27,
                      color: currentind == 1
                          ? kMainColor
                          : const Color(0xFF6E7177),
                    ),
                    label: 'Matches'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor:
                    currentind == 2 ? const Color(0x3D85C240) : Colors.white,
                child: NavigationDestination(
                    icon: ImageIcon(
                      const AssetImage(AssetsData.homeSel),
                      size: 27,
                      color: currentind == 2
                          ? kMainColor
                          : const Color(0xFF6E7177),
                    ),
                    label: 'Home'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor:
                    currentind == 3 ? const Color(0x3D85C240) : Colors.white,
                child: NavigationDestination(
                    icon: ImageIcon(
                      const AssetImage(AssetsData.messSel),
                      size: 27,
                      color: currentind == 3
                          ? kMainColor
                          : const Color(0xFF6E7177),
                    ),
                    label: 'messages'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor:
                    currentind == 4 ? const Color(0x3D85C240) : Colors.white,
                child: NavigationDestination(
                    icon: ImageIcon(
                      const AssetImage(AssetsData.actiSel),
                      size: 27,
                      color: currentind == 4
                          ? kMainColor
                          : const Color(0xFF6E7177),
                    ),
                    label: 'my activity'),
              ),
            ],
            selectedIndex: currentind,
            elevation: 0.0,
          )),
      key: scaffoldKey,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leadingWidth: 50,
        centerTitle: true,
        title: titleList[currentind],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
                // Navigator.pop(context);
              },
              child: const Image(
                image: AssetImage(AssetsData.mn),
                width: 24,
                height: 24,
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  NavegatorPush(context, const NotificationScreen());
                  // Navigator.pop(context);
                },
                child: const Image(
                  image: AssetImage(AssetsData.notification),
                  width: 24,
                  height: 24,
                )),
          ),
        ],
      ),
      body: screens[currentind],
    );
  }
}


//  BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           // useLegacyColorScheme: true,

//           fixedColor: kMainColor,
//           selectedIconTheme: IconThemeData(color: kMainColor),
//           showUnselectedLabels: true,

//           elevation: 10,
//           items: const [
            // BottomNavigationBarItem(
            //     icon: ImageIcon(
            //       AssetImage(AssetsData.stadSel),
            //       size: 30,
            //     ),
            //     label: 'Stadiums'),
            // BottomNavigationBarItem(
            //     icon: ImageIcon(
            //       AssetImage(AssetsData.matchSel),
            //       size: 30,
            //     ),
            //     label: 'Matches'),
            // BottomNavigationBarItem(
            //     icon: ImageIcon(
            //       AssetImage(AssetsData.homeSel),
            //       size: 30,
            //     ),
            //     label: 'Home'),
            // BottomNavigationBarItem(
            //     icon: ImageIcon(
            //       AssetImage(AssetsData.messSel),
            //       size: 30,
            //     ),
            //     label: 'messages'),
            // BottomNavigationBarItem(
            //     icon: ImageIcon(
            //       AssetImage(AssetsData.actiSel),
            //       size: 30,
            //     ),
            //     label: 'my activity'),
//           ],
//           currentIndex: currentind,
//           backgroundColor: Colors.white,
//           unselectedItemColor: Colors.grey,
//           onTap: (value) {
//             print(value);
//             setState(() {
//               currentind = value;
//             });
//           },
//         ),
    