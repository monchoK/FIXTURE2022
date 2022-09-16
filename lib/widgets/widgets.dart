import 'package:flutter/material.dart';

MaterialButton buttonMainScreen(BuildContext context, tittle, ruta) {
  return MaterialButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ruta));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 25,
      height: 40,
      minWidth: 200,
      color: Theme.of(context).primaryColor,
      child: Text(tittle,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).canvasColor,
              fontSize: 25,
              fontWeight: FontWeight.w400)));
}

AppBar appBar1(BuildContext context, title) {
  return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).secondaryHeaderColor),
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(title, style: Theme.of(context).textTheme.headline3)));
}

SizedBox dataCards(BuildContext context) {
  return SizedBox(
      height: 30,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 50,
                child: Text("  NAME",
                    style: Theme.of(context).textTheme.headline4)),
            SizedBox(
                width: 50,
                child: Text("        PJ",
                    style: Theme.of(context).textTheme.headline4)),
            SizedBox(
                width: 35,
                child: Text("    G",
                    style: Theme.of(context).textTheme.headline4)),
            SizedBox(
                width: 35,
                child: Text("    E",
                    style: Theme.of(context).textTheme.headline4)),
            SizedBox(
                width: 35,
                child: Text("    P",
                    style: Theme.of(context).textTheme.headline4)),
            SizedBox(
                width: 35,
                child: Text("    GF",
                    style: Theme.of(context).textTheme.headline4)),
            SizedBox(
                width: 35,
                child: Text("    GC",
                    style: Theme.of(context).textTheme.headline4)),
            SizedBox(
                width: 35,
                child: Text("    DG",
                    style: Theme.of(context).textTheme.headline4)),
            SizedBox(
                width: 35,
                child: Text("   Pts",
                    style: Theme.of(context).textTheme.headline4))
          ]));
}

Divider divider() {
  return const Divider(
      color: Colors.black, thickness: 3, indent: 10, endIndent: 10, height: 4);
}
