import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

const darkpurple = Color(0xff7D40AF);
const lightpurple = Color(0xffE0AAFF);
const lighterpurple = Color(0xffEED1FF);
const white = Colors.white;

//for containers
const purplecircle = BoxDecoration(
  shape: BoxShape.circle,
  color: lighterpurple,
);
const buttonwithborder = BoxDecoration(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(62),
    bottomRight: Radius.circular(62),
    topLeft: Radius.circular(62),
    bottomLeft: Radius.circular(62),
  ),
);

const splashscreentime = Duration(seconds: 5);

const breakpoints = [
  ResponsiveBreakpoint.resize(350, name: MOBILE),
  ResponsiveBreakpoint.autoScale(600, name: TABLET),
  ResponsiveBreakpoint.resize(800, name: DESKTOP),
  ResponsiveBreakpoint.autoScale(1700, name: 'XL')
];
