import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/components/splash_content.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome in APS Shop, Lets's shop",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people connect with store \n around United State of America",
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
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                        text: splashData[index].values.first,
                        image: splashData[index].values.last))),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        children: List.generate(
                            splashData.length, (index) => BuildDot(index)),
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      DefaultButton(
                        text: "Continuer",
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer BuildDot(int index) {
    // log("current-> "+currentPage.toString()+"index-> "+index.toString());
    int val = currentPage == index ? 20 : 6;
    //log(val.toString());
    return AnimatedContainer(
        duration: cAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage == index ? 20 : 6,
        decoration: BoxDecoration(
            color: currentPage == index ? cPrimaryColor : Color(0xFFD8D8D8),
            borderRadius: BorderRadius.circular(3)));
  }
}
