import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';


//we use route name
//All our route will be available here

final Map<String,WidgetBuilder> routes= {
      SplashScreen.routeName:(context)=>SplashScreen(),
      SignInScreen.routeName:(context)=>SignInScreen()
    };