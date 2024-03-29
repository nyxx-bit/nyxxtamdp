import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nyxxtamdp/screens/main_screen.dart';
import 'package:nyxxtamdp/screens/temp_home.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nyxxtamdp/providers/app_providers.dart';
import 'package:nyxxtamdp/util/const.dart';
import 'package:nyxxtamdp/util/themeconfig.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (BuildContext context, AppProvider appProvider, Widget child) {
        return MaterialApp(
          key: appProvider.key,
          debugShowCheckedModeBanner: false,
          navigatorKey: appProvider.navigatorKey,
          title: Constants.appName,
          theme: appProvider.theme,
          darkTheme: ThemeConfig.darkTheme,
          home: AnimatedSplashScreen(
            duration: 3000,
            splash: "[n]https://i.ibb.co/Hn1FJbk/ic-logo.png",
            nextScreen: const MainScreen(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white,
          ),
        );
      },
    );
  }
}
