import 'package:flutter/material.dart';
import 'package:vanpool/screens/splash/components/body.dart';
import 'package:vanpool/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // Você ira chama-lo na tela inicial | esta na pagina 'size_config.dart'
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
