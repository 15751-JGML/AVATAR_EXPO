import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:examen_json/pages/pinguino_page.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cards Page')),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Metodos para las cards
                _pinguino(context),
              ],
            ),
          ),
        ));
  }
}

//Metodos para los CARDS
Widget _pinguino(BuildContext context) {
  return Card(
    // Darle un redondeo a los cards
    clipBehavior: Clip.antiAlias,
    elevation: 13,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Para agregar la imagen
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Ink.image(
              height: 200,
              image: NetworkImage(
                  'https://images.pexels.com/photos/689784/pexels-photo-689784.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
              fit: BoxFit.fitWidth,
            ),
          ],
        ),

        //Para agregar texto debajo de la imagen
        Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Pingüino",
                style: TextStyle(color: Colors.black38),
              ),
              Text(
                  "El animal que se deslizan de panza sobre las laderas heladas a fin de ahorrar tiempo y energía"),
            ],
          ),
        ),

        //Para agregar el boton de mas información
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text(
                'Mas Info',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              color: Colors.cyan,
              onPressed: () {
                // Que sucedera
                _btnPinguino(context);
              },
            ),
          ],
        )
      ],
    ),
  );
}

//Metodos para los botones
_btnPinguino(BuildContext context) {
  final route = MaterialPageRoute(builder: (context) => PinguinoClass());
  Navigator.push(context, route);
}
