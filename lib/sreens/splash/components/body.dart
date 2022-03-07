import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: SplashContent()
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
   const SplashContent({Key? key}) : super(key: key);
 
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
                       Text("Welcome in my shop APP,Let's Shop !!"),
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

 