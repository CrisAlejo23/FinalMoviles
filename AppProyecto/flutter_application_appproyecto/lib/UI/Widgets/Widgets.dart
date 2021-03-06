import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/UI/Screen/Pantalla_3.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/player.dart';

//TEXTOS NEGRILLA
Widget Textos1(String textos, double tama) {
  return Text(
    textos,
    style: TextStyle(color: Colors.white, fontSize: tama),
  );
}

Widget Textos2(String textos, double tama) {
  return Text(
    textos,
    style: TextStyle(
        color: Colors.white, fontSize: tama, fontWeight: FontWeight.bold),
  );
}

Widget ImagenNormal(String direc, double ancho, double alto) {
  return Image.asset(direc, width: ancho, height: alto);
}

Widget ImagenFondo(String direc) {
  return Image.asset(direc, fit: BoxFit.cover);
}

Widget Gradiente1() {
  return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.black54, Color(0x00000000)],
              begin: Alignment(0.4, 0.0),
              end: Alignment(0.0, 0.1))));
}

class Enlaces extends StatelessWidget {
  String nombre;
  Enlaces({required this.nombre, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
          textStyle: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          //pushReplacement = PERMITE CERRAR LA PANTALLA
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Prueba3()));
        },
        child: Text(
          this.nombre,
          style: TextStyle(color: Colors.blueGrey[50], fontSize: 16, shadows: [
            Shadow(
              offset: Offset(5.0, 5.0),
              blurRadius: 9.0,
              color: Colors.black,
            )
          ]),
        ));
  }
}

class BotonPlay extends StatelessWidget {
  String nombre;
  String ubicacion;
  BotonPlay({required this.nombre, required this.ubicacion, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      //ICONO
      icon: Icon(Icons.play_arrow),
      //TEXTO
      label: Text(nombre),
      //ESTILO TEXTO
      style: TextButton.styleFrom(
        primary: Colors.black,
        backgroundColor: Colors.white,
      ),
      onPressed: () {
        //pushReplacement = PERMITE CERRAR LA PANTALLA
        Navigator.pushReplacement(
            context,
            //PERMITE IR A OTRA VISTA-ARCHIVO PLAYER
            MaterialPageRoute(
              builder: (context) => VistaPlay(
                direccion: ubicacion,
              ),
            ));
      },
    );
  }
}
