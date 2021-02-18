import 'package:flutter/material.dart';

//
// COLORS
// Primary Palette
const kBlue120 = Color(0xFF1E64CC);
const kBlue110 = Color(0xFF2271E5);
const kBlue100 = Color(0xFF267DFF);
const kGreen = Color(0xFF267DFF);

// General Palette
const kError = Color(0xFFF64949);

const kSuccess = Color(0xFF3BD5A9);

const kInfo = Color(0xFF2799F9);
const kWarning = Color(0xFFFFC95C);

//
// LAYOUT
const SizedBox k8Vertical = SizedBox(height: 8);
const SizedBox k16Vertical = SizedBox(height: 16);
const SizedBox k24Vertical = SizedBox(height: 24);
const SizedBox k32Vertical = SizedBox(height: 32);
const SizedBox k48Vertical = SizedBox(height: 48);
const SizedBox k56Vertical = SizedBox(height: 56);
const SizedBox k80Vertical = SizedBox(height: 80);

const SizedBox k8Horizontal = SizedBox(width: 8);
const SizedBox k16Horizontal = SizedBox(width: 16);
const SizedBox k24Horizontal = SizedBox(width: 24);
const SizedBox k32Horizontal = SizedBox(width: 32);
const SizedBox k48Horizontal = SizedBox(width: 48);
const SizedBox k62Horizontal = SizedBox(width: 62);
//
// COMPONENTS - general
Widget kDivider = SizedBox(
  width: 100,
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Divider(
      thickness: 1.2,
      color: kBlue100,
    ),
  ),
);

double kBigRadius = 40;
double kMediumRadius = 16;
double kSmallRadius = 10;
BoxShadow kBottomMediumShadow = BoxShadow(
    offset: Offset(0, 12), blurRadius: 15, color: kBlue100.withOpacity(0.2));

InputDecoration kInputsDecoration = InputDecoration(
    hintStyle: kP.copyWith(color: Colors.black45),
    errorStyle:
        kP.copyWith(color: kError, backgroundColor: kError.withOpacity(0.2)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kError.withOpacity(0.4), width: 1)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kBlue100.withOpacity(0.4), width: 1)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kBlue100.withOpacity(0.4), width: 1)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kBlue100.withOpacity(0.4), width: 1)));
//
// FONTS - General
TextStyle kH1 = TextStyle(
    fontFamily: "Roboto",
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: Colors.black);

TextStyle kH2 = TextStyle(
    fontFamily: "Roboto",
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Colors.black);

TextStyle kH3 = TextStyle(
    fontFamily: "Roboto",
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.black);

TextStyle kP = TextStyle(
    fontFamily: "Roboto",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black);

TextStyle kSmall = TextStyle(
    fontFamily: "Roboto",
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black);

TextStyle kMicro = TextStyle(
    fontFamily: "Roboto",
    fontSize: 8,
    fontWeight: FontWeight.w400,
    color: Colors.black);

//
// FONTS - specific
TextStyle kTextBottomBar = kP.copyWith(color: kBlue100);
