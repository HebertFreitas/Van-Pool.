import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:vanpool/components/defult_button.dart';

import 'package:vanpool/screens/menu/menu_screen.dart';

import 'package:vanpool/size_config.dart';

import 'custom_surfix_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Bem vindo de volta",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: getProportionateScreenWidth(22),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Entre com seu email e senha ou continue \ncom o login socail",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.14),
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
//======================================================================\\
          //email
          buildEmailFormField(),
          SizedBox(
              height: getProportionateScreenHeigth(
                  20)), //espaçamento do meu campo email e senha

//======================================================================\\
          //senha
          buildPasswordFormField(),
          SizedBox(
              height: getProportionateScreenHeigth(
                  20)), //espaçamento do meu campo email e senha
          //FormError(errors: errors), // mensagem de erro ao digitar email errado
          SizedBox(height: SizeConfig.screenHeight * 0.09),
//======================================================================\\
          //Botão de login
          DefaultButton(
            text: "Login",
            press: () {
              // no caso estou mandando de volta para o splash mas posso direcionar o usuario para outro local basta especificar a rota
              Navigator.pushNamed(context, MenuScreen.routeName);
              // aqui vem o link para a proxima pagina
            },
          ),
        ],
      ),
    );
  }

//======================================================================\\
  //senha
  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      // Nosso Input de senha
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.white),

        //Preenchendo meu form com a cor branca
        //fillColor: Colors.white,
        //filled: true,

        labelText: "Senha",
        hintText: "Entre com o sua senha",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/lock.png",
        ),
      ),
    );
  }

  //email
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty) {
          setState(() {
            errors.add("Por favor entre com o seu E-mail");
          });
        }
        return null;
      },
      // Nosso Input de login
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.white),

        //Preenchendo meu form com a cor branca
        //fillColor: Colors.white,
        //filled: true,

        labelText: "E-mail",
        hintText: "Entre com o seu e-mail",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/email.png",
        ),
      ),
    );
  }
}

/*
class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);
  final List<String> errors;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/icons/error.png",
            height: getProportionateScreenWidth(14),
            width: getProportionateScreenWidth(14),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Text(errors[0]),
          ],
        ),
      ],
    );
  }
}
*/
