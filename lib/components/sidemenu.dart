import 'package:flutter/material.dart';


class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      width: mediaQuery.size.width * 0.030,
      height: mediaQuery.size.height ,
      child: Text("Here"),

    );

  }

}