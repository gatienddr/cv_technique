import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portofolio technique Gatien',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'NotoSans'),
      home: MyHomePage(title: 'Mon Portofolio technique'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Image(image: AssetImage('../img/photoCv.jpg'))),
            Container(
              margin: const EdgeInsets.only(top: 10),
              constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.width * 0.1,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              child: Column(
                children: [
                  Text(
                    'Ce jeune est motivé à travailler et à intégrer pleinement vos équipes',
                    style: TextStyle(
                        color: Colors.white,
                        //height:MediaQuery.of(context).size.width*0.001,
                        fontSize: MediaQuery.of(context).size.width * 0.01),
                  ),
                  Text(
                    'Bienvenue sur mon portofolio technique ',
                    style: TextStyle(
                        color: Colors.white,
                        height: 1.9,
                        fontSize: MediaQuery.of(context).size.height *
                            MediaQuery.of(context).size.width *
                            0.00005),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.brown[400],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                    200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blueGrey[400],
              alignment: Alignment.center,
              child: Column(children: [
                Text(
                  "Vous pouvez y trouver mes compétences techniques et aptitudes",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height *
                          MediaQuery.of(context).size.width *
                          0.00002,
                      height: 1.5,
                      color: Colors.white),
                ),
                InkWell(
                  child: Text("N'hésitez pas à me contacter en cliquant ici"),
                  onTap: () async {
                    await launch("mailto:gassddr@gmail.com");
                  },
                ),
                Text(
                  "110110101100101 111001001100011 1101001",
                  style:
                      TextStyle(fontSize: 10.0, height: 5, color: Colors.white),
                ),
                Text(
                  "6120 6269 656E 746F 74",
                  style: TextStyle(fontSize: 10.0, color: Colors.white),
                )
              ]),
              transform: Matrix4.rotationZ(0.1),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
