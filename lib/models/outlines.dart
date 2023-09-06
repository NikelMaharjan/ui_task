

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task/constants/color.dart';

class Outline {

  final String text;
  final String icon;
  final String svgIcon;
  final Color color;
  Outline({required this.text, required this.icon, required this.color, required this.svgIcon});

}

List<Outline> outlines  = [

  Outline(
      text: "Apps",
      icon: 'assets/png/app.png',
      color: AppColor.grid1Color,
      svgIcon: "assets/svg/app.svg",

  ),

  Outline(
      text: "Websites",
      icon: 'assets/png/website.png',
      color: AppColor.grid2Color,
      svgIcon: "assets/svg/website.svg",

  ),

  Outline(
      text: "Designs",
      icon: 'assets/png/design.png',
      color: AppColor.grid3Color,
      svgIcon: "assets/svg/design.svg",

  ),

  Outline(
      text: "Consultant",
      icon: 'assets/png/consultant.png',
      color: AppColor.grid4Color,
      svgIcon: "assets/svg/consultant.svg",

  ),


];