import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/sreens/splash/components/splash_content.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
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
                child:PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                      currentPage=value;
                    });

                  },
                    itemCount: splashData.length,
                    itemBuilder: (
                        context,index)=>SplashContent(
                          text: splashData[index].values.first,
                        image: splashData[index].values.last))
            ),
            Expanded(
                flex:2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                     Row(
                       children: List.generate(splashData.length, (index) => BuildDot(index)),
                       mainAxisAlignment: MainAxisAlignment.center,
                     ),
                      Spacer(flex: 2,),
                      DefaultButton(
                        text: "Continuer",
                      press: (){},),
                      Spacer(),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }


 AnimatedContainer BuildDot(int index){
    return AnimatedContainer(
      duration: cAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage == index ? 20:6 ,
        decoration: BoxDecoration(
            color: currentPage == index ? cPrimaryColor : Color(0xFFD8D8D8),
            borderRadius: BorderRadius.circular(3)
        )

    );
  }

}



class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.text, required this.press}) : super(key: key);
final String text;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
          color: cPrimaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: press,
          child: Text(text,style: TextStyle(fontSize:getProportionateScreenWidth(18),color: Colors.white),)
      ),
    );
  }
}

