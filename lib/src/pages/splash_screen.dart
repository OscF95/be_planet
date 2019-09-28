import 'package:be_planet/src/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SplashScreenDemo(),
    );
  }
}

class SplashScreenDemo extends StatefulWidget {
  @override
  _SplashScreenDemoState createState() => _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo> {
  final _estiloTexto = new TextStyle(fontSize: 20,color: Colors.green,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      backgroundColor: Colors.white,
      image: Image.asset('images/BePlanet.png'),
      title: Text("Sabemos que las pequeñas acciones \n plantan grandes cambios.",
          style: _estiloTexto,
          textAlign: TextAlign.center,

      ),
      photoSize: 120.0,
      loaderColor: Colors.green,
      navigateAfterSeconds: new HomePage(),
    );
  }
}
