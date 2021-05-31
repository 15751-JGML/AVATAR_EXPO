import 'package:flutter/material.dart';
import 'package:examen_json/pages/icono_string_util.dart';
import 'package:examen_json/pages/provider_menu.dart';
import 'package:examen_json/pages/alert_page.dart';
import 'package:examen_json/pages/avatar_page.dart';
import 'package:examen_json/pages/cards_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aplicacion"),
      ),
      body: _lista(context),
    );
  }

  Widget _lista(BuildContext context) {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right_outlined),
        onTap: () {
          //showDialog(
          //  context: context,
          //builder: (BuildContext context) =>
          if (opt['ruta'] == 'alert') {
            final route = MaterialPageRoute(builder: (context) => AlertPage());
            Navigator.push(context, route);
          } else if (opt['ruta'] == 'avatar') {
            final route = MaterialPageRoute(builder: (context) => AvatarPage());
            Navigator.push(context, route);
          } else if (opt['ruta'] == 'card') {
            final route = MaterialPageRoute(builder: (context) => CardsPage());
            Navigator.push(context, route);
          } else {
            // _buildPopUpDialog(context, opt['texto']),
          }
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}

//metodo mensaje AlertDialog
// Widget _buildPopUpDialog(BuildContext context, String opt) {
//   return new AlertDialog(
//   title: const Text('diste click en la opcion '),
//   content: new Column(
//   mainAxisSize: MainAxisSize.min,
// crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
// Text('hola soy la opcion :' + opt),
//],
// ),
//actions: <Widget>[
//new FlatButton(
//onPressed: () {
//Navigator.of(context).pop();
//},
//textColor: Theme.of(context).primaryColorDark,
//child: const Text('cerrar'),
//),
//],
//);
// }
//}
