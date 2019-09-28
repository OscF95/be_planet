
import 'package:flutter/material.dart';
import 'package:be_planet/main.dart';


class RegistroUsuario extends StatefulWidget {


  @override
  _RegistroUsuarioState createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido a BePlanet'),
          centerTitle: true,
        ),
        body:_datosRegistro(),

    );
  }
}

Widget _datosRegistro(){

   return Column(
      mainAxisAlignment: MainAxisAlignment.center,  
      children: <Widget> [
      Container(
        margin: const EdgeInsets.all(50.0),
        width: 300.0,
        child: Form(
          key: _key,
          child: Column(
            children:<Widget>[
       TextFormField( decoration: InputDecoration(labelText: 'Ingresa tu usuario', icon: Icon(Icons.account_circle))),
        Divider(),
       TextFormField( decoration: InputDecoration(labelText: 'Correo electronico', icon: Icon(Icons.email))),
        Divider(),
       TextFormField( decoration: InputDecoration(labelText: 'Contraseña', icon: Icon(Icons.security)),obscureText: true),
        Divider(height: 20.0),
       FloatingActionButton(heroTag: "registroCompleto", child: Icon(Icons.arrow_forward, size: 55,), backgroundColor: Colors.green, onPressed: () {}), 
        Divider(height: 20.0),
       RaisedButton(child: Icon(Icons.alternate_email, size: 55,),color: Colors.redAccent,onPressed: (){})]
           )
         )
       )
     ]
  );
}


GlobalKey<FormState> _key = GlobalKey();