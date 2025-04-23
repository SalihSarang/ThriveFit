import 'package:flutter/material.dart';

safeAreaPadding(BuildContext context) {
  var screenWidth = MediaQuery.of(context).size.width;

  return EdgeInsets.all(screenWidth * 0.04);
}

sizedBoxHeight(BuildContext context, {required num adjustHeight}) {
  var screenHeight = MediaQuery.of(context).size.height;
  return screenHeight * adjustHeight;
}

sizedBoxWidth(BuildContext context, {required num adjustWidth}) {
  var screenWidth = MediaQuery.of(context).size.width;
  return screenWidth * adjustWidth;
}
