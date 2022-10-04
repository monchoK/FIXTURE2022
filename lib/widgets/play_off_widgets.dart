import 'package:fixture2022/widgets/widgets.dart';
import 'package:flutter/material.dart';

Card cardff(BuildContext context, bandera, equipo, resultado, fecha, hora) {
  return Card(
      elevation: 10,
      borderOnForeground: true,
      color: Theme.of(context).cardColor,
      shadowColor: Theme.of(context).secondaryHeaderColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
          height: 70,
          width: 200,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text(fecha), Text(hora)]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(bandera, height: 25, width: 20),
                      Text(equipo),
                      Text(resultado)
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(bandera, height: 25, width: 20),
                      Text(equipo),
                      Text(resultado)
                    ])
              ])));
}

Container octavos(BuildContext context, name, oct1, oct2, oct3, oct4) {
  return Container(
      width: 300,
      color: Theme.of(context).backgroundColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
            height: 40,
            child: Center(
                child:
                    Text(name, style: Theme.of(context).textTheme.headline3))),
        Container(
            height: 620,
            width: 300,
            decoration: degrade(context),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [oct1, oct2, oct3, oct4]))
      ]));
}

Container cuartos(BuildContext context, name, cua1, cua2) {
  return Container(
      width: 300,
      color: Theme.of(context).backgroundColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
            height: 40,
            width: 300,
            child: Center(
                child:
                    Text(name, style: Theme.of(context).textTheme.headline3))),
        Container(
            height: 620,
            width: 300,
            decoration: degrade(context),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [cua1, cua2]))
      ]));
}

Container semifinal(BuildContext context, name, sem1) {
  return Container(
      width: 300,
      color: Theme.of(context).backgroundColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
            width: 300,
            height: 40,
            child: Center(
                child:
                    Text(name, style: Theme.of(context).textTheme.headline3))),
        Container(
            height: 620,
            width: 300,
            decoration: degrade(context),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [sem1]))
      ]));
}

Container finals(BuildContext context, name, finalists) {
  return Container(
      width: 300,
      color: Theme.of(context).backgroundColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
            height: 40,
            width: 300,
            child: Center(
                child:
                    Text(name, style: Theme.of(context).textTheme.headline3))),
        Container(
            height: 620,
            width: 300,
            decoration: degrade(context),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [finalists]))
      ]));
}
