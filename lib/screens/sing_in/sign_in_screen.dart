import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sing_in";
  @override
  // tenho que centralizar meu title manualmente
  // pois no android ele vem alinhado a esquerda diferente do ios que deixa ele // alinhado ao centro

  // para isto dentro do meu AppBar tenho que informar o center title: true
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6F6DEB),
        centerTitle: true,
        title: Text("Sign in", style: TextStyle(color: KPrimaryColor)),
      ),
      body: Body(),
    );
  }
}
