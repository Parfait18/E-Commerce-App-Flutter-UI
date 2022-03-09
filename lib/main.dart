import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/sreens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
              headline6: TextStyle(
                  color:Color(0xFF8B8B8B ),
              fontSize: 20),

          )

        ),
        textTheme: TextTheme(
            bodyText1: TextStyle(color: cTextColor ),
            bodyText2: TextStyle(color: cTextColor ),
        ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
