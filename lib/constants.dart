import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
const cPrimaryColor= Color(0xFFFF7643);
const cPrimaryLightColor= Color(0xFFFFECDF);
const cPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end : Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const cSecondaryColor = Color(0xFF979797);
const cTextColor = Color(0xFF757575);

const cAnimationDuration = Duration(milliseconds: 200);


// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String cEmailNullError = "Please Enter your email";
const String cInvalidEmailError = "Please Enter Valid Email";
const String cPassNullError = "Please Enter your password";
const String cShortPassError = "Password is too short";
const String cMatchPassError = "Passwords don't match";
const String cNamelNullError = "Please Enter your name";
const String cPhoneNumberNullError = "Please Enter your phone number";
const String cAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: cTextColor),
  );
}