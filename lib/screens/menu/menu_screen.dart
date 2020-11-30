import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vanpool/constants.dart';
import 'package:vanpool/theme.dart';

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VanPool',
      theme: ThemeData(
        scaffoldBackgroundColor: KWhiteColor,
        primaryColor: KPrimaryColor,
        textTheme: textTheme(
            headline: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFFFFFFFFF))),
      ),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  static String routeName = "/menu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  "/", height: 11, // icone do menu aqui
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Vamos procurar uma van\n para você",
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                "All",
                style: Theme.of(context).textTheme.button,
              )
            ],
          )
        ],
      ),
    );
  }
}
