import 'package:flutter/material.dart';
import 'package:malaeb/Core/utils/colors.dart';
import 'package:malaeb/Core/utils/size_config.dart';
import 'package:malaeb/Core/utils/styles.dart';
import 'package:malaeb/Feature/splach/presentation/views/splach_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: 'Malaeb',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith((state) {
            if (state.contains(MaterialState.selected)) {
              return StylesData.font10.copyWith(color: kMainColor);
            }
            return StylesData.font10.copyWith(color: const Color(0xFF6E7177));
          }),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: kMainColor),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
        fontFamily: 'Bahij TheSansArabic',
        useMaterial3: true,
      ),
      home: const SplachView(),
    );
  }
}
