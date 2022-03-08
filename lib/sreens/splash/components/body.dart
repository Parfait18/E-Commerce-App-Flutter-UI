import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String,String>> splashData= [
    {
      "text": "Welcome in APS Shop, Lets's shop",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people connect with store \n around United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. Just stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Column(
                    children: <Widget>[
                      Spacer(),
                      Text("APS SHOP",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(36),
                            color: cPrimaryColor,
                            fontWeight: FontWeight.bold
                        ),),
                      Text("Welcome in APS Shop, Lets's shop"),
                      Spacer(flex: 2),
                      Image.asset(
                        "assets/images/splash_1.png",
                        height: getProportionateScreenHeight(265),
                        width: getProportionateScreenWidth(235),
                      )
                    ]
                )
            ),
            Expanded(
                flex:2,
                child: SizedBox())
          ],
        ),
      ),
    );
  }
}
 class SplashContent extends StatelessWidget {
   const SplashContent({Key? key, required this.text, required this.image}) : super(key: key);
   final String text,image;


   @override
   Widget build(BuildContext context) {
     return Column();
   }
 }

 