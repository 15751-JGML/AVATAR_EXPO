import 'package:flutter/material.dart';

class PinguinoClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pingüino Page')),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Metodo
                _pinguino(context)
              ],
            ),
          ),
        ));
  }
}

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
                  'https://images.pexels.com/photos/53970/king-penguin-penguins-group-of-penguins-bird-53970.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
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
                "Descripcion",
                style: TextStyle(color: Colors.black38),
              ),
              Text(
                  "Se trata de un grupo de aves marinas no voladoras, en el que se pueden diferenciar hasta 18 especies diferentes las cuales que se distribuyen -exceptuando el pingüino de las islas Galápagos- exclusivamente en el Hemisferio Sur.",
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ],
    ),
  );
}
