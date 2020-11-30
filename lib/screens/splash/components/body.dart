import 'package:flutter/material.dart';
import 'package:vanpool/constants.dart';
import 'package:vanpool/screens/sing_in/sign_in_screen.dart';
import 'package:vanpool/size_config.dart';

import 'package:vanpool/screens/splash/components/splash_content.dart';
import 'package:vanpool/components/defult_button.dart';

// minhas importações

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Uma nova maneira de se locomover\n de forma barata e agil",
      "image": "assets/images/bus-stop.png",
    },
    {
      "text": "Encontre sua vaga ou\n mais passageiros para você",
      "image": "assets/images/Bus Stop-pana.png"
    },
    {
      "text": "Mais agilidade na hora de ir embora",
      "image": "assets/images/Directions-pana.png"
    },
    {
      "text": "Maior praticidade para encontrar novos clientes",
      "image": "assets/images/Invoice-rafiki.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // mantem meu conteudo dentro da area segura do app
      child: SizedBox(
          width: double.infinity, // alinha ao centro todos os filhos em meu box

          child: Column(
            children: <Widget>[
              // parte superior da tela - movel
              // contem o titulo da minha tela
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]["text"]),
                ),
              ),

              // parte inferior da tela - fixa
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(30)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(flex: 1),
                      DefaultButton(
                        //Botão do app
                        text: ("Continue"),
                        //Texto do botão
                        press: () {
                          // Rota do botão
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: KAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? KPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
