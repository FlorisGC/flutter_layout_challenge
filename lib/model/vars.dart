import 'dart:typed_data';

import 'package:flutter/material.dart';

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double calculateScreenSize(BuildContext context) {
  var screenSize = (screenHeight(context) + screenWidth(context)) / 2;

  return screenSize;
}

String name = 'Brendan Deneve';

String job = 'App Dev';

double get iconBackgroundSize => 48;

int count = 0;

double profileHeight = 150;

Uint8List? selectedImage;
