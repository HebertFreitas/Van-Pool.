import 'package:flutter/material.dart';
import 'package:vanpool/constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key key, this.text, this.image}) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        // mantem meu conteudo dentro da area segura do app
        child: SizedBox(
            width:
                double.infinity, // alinha ao centro todos os filhos em meu box

            child: Column(
              children: <Widget>[
                // parte superior da tela - movel
                // contem o titulo da minha tela
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Text(
                        "VanPool",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeigth(
                              36), //fonte se torna ajustavel ao meu windscrem
                          color: KPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: getProportionateScreenHeigth(
                              15), //fonte se torna ajustavel ao meu windscrem
                          color: KPrimaryColor,
                          fontWeight: FontWeight.w200,
                        ),
                      ), // sub titulo posicionado abaixo do meu titulo
                      Spacer(
                        flex: 2,
                      ),
                      Image.asset(
                        image, // minha imagem vem aqui
                        height: getProportionateScreenHeigth(
                            265), // altura proporcional da minha imagem
                        width: getProportionateScreenWidth(335),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
