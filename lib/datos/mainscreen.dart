import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: appBar1(context),
    );
  }
}

AppBar appBar1(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Theme.of(context).backgroundColor,
    title: Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        "Qatar World Cup 2022",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 27,
        ),
      ),
    ),
  );
}
