import 'package:flutter/material.dart';
// dados adicionados Hebert
import 'package:vanpool/routs.dart';
import 'package:vanpool/screens/splash/splash_screen.dart';
import 'package:vanpool/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() {
  runApp(MyApp());
}

void main() {
  runApp(MyApp());
  var db = Firestore.instance;
  db.collection("produtos")
      .document("produto1")
      .setData({"nome": "Van", "valor": 6.00, "ativo": true});

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'vanpool',
      theme: theme(),
      home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
 }
}