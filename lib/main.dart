


import 'package:flutter/material.dart';
import 'package:flutter_app/components/sidemenu.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:flutter_app/components/home.dart';


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

  callback(FSBStatus newStatus){
    setState(() {
      status=newStatus;
    });
  }

  FSBStatus status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:FoldableSidebarBuilder(status: status, drawer: SideMenu(), screenContents: Home( status,callback))


      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }




}






