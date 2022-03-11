import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/sreens/splash/components/body.dart';

class SplashScreen extends StatelessWidget{
  @override
  static String routeName = "/splaash_screen";
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}