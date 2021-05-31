import 'package:examen_json/pages/avatar_view.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AvatarPage')),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: 20,
            ),

            ///avatar cirulular
            IconButton(
              iconSize: 100,
              icon: AvatarView(
                avatarType: AvatarType.CIRCLE,
                backgroundColor: Colors.red,
                imagePath: "assets/image.png",
                placeHolder: Container(
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
                errorWidget: Container(
                  child: Icon(
                    Icons.error,
                    size: 50,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AvatarCircular()),
                );
              },
            ),
            SizedBox(
              height: 16,
            ),
          ]),
        ),
      ),
    );
  }
}

class AvatarCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("avatar Circular sin borde"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "Avatar Circular sin borde",
              style: TextStyle(fontSize: 35),
            )),
            AvatarView(
              avatarType: AvatarType.CIRCLE,
              backgroundColor: Colors.red,
              imagePath: "assets/image.png",
              placeHolder: Container(
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              errorWidget: Container(
                child: Icon(
                  Icons.error,
                  size: 50,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
