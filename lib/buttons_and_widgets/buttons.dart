import 'package:flutter/material.dart';

MaterialButton buttonMainScreen(BuildContext context, tittle, rute) {
  return MaterialButton(
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    elevation: 25,
    height: 40,
    minWidth: 200,
    color: Theme.of(context).primaryColor,
    child: Text(
      tittle,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Theme.of(context).canvasColor,
          fontSize: 25,
          fontWeight: FontWeight.w400),
    ),
  );
}
