import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Altura
// Obtenha a altura proporcional de acordo com o tamanho da tela
double getProportionateScreenHeigth(double inputHeigth) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 é a altura do layout que o designer usa
  return (inputHeigth / 812.0) * screenHeight;
}

//Largura
//Obtenha a largura proporcional de acordo com o tamanho da tela
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 é a largura do layout que o designer usa
  return (inputWidth / 375.0) * screenWidth;
}
