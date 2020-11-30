import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    TextStyle style,
    Text child,
    String Text,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    var flatButton = FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: KPrimaryColor,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(18),
          color: Color(0xFF6F6DEB),
        ),
      ),
    );
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeigth(56),
      child: flatButton,
    );
  }
}
