import 'package:fixture2022/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/play_off_widgets.dart';

class PlayOff extends StatefulWidget {
  const PlayOff({Key? key}) : super(key: key);

  @override
  State<PlayOff> createState() => PlayOffState();
}

class PlayOffState extends State<PlayOff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 3, 9),
        appBar: appBar1(context, "Play Off"),
        body: ListView(scrollDirection: Axis.horizontal, children: [
          octavos(
              context,
              "Octavos lado A",
              cardff(context, "assets/escudo.png", "Por definirse", "", "3/12",
                  "12:00"),
              cardff(context, "assets/escudo.png", "Por definirse", "", "3/12",
                  "16:00"),
              cardff(context, "assets/escudo.png", "Por definirse", "", "5/12",
                  "12:00"),
              cardff(context, "assets/escudo.png", "Por definirse", "", "5/12",
                  "16:00")),
          cuartos(
              context,
              "Cuartos lado A",
              cardff(context, "assets/escudo.png", "Por definirse", "", "9/12",
                  "16:00"),
              cardff(context, "assets/escudo.png", "Por definirse", "", "9/12",
                  "12:00")),
          semifinal(
              context,
              "Semifinal lado A",
              cardff(context, "assets/escudo.png", "Por definirse", "", "13/12",
                  "16:00")),
          finals(
              context,
              "Final",
              cardff(context, "assets/escudo.png", "Por definirse", "", "18/12",
                  "12:00"),
              "Por definirse"),
          semifinal(
              context,
              "Semifinal lado B",
              cardff(context, "assets/escudo.png", "Por definirse", "", "14/12",
                  "16:00")),
          cuartos(
              context,
              "Cuartos lado B",
              cardff(context, "assets/escudo.png", "Por definirse", "", "10/12",
                  "16:00"),
              cardff(context, "assets/escudo.png", "Por definirse", "", "10/12",
                  "12:00")),
          octavos(
              context,
              "Octavos lado B",
              cardff(context, "assets/escudo.png", "Por definirse", "", "4/12",
                  "12:00"),
              cardff(context, "assets/escudo.png", "Por definirse", "", "4/12",
                  "16:00"),
              cardff(context, "assets/escudo.png", "Por definirse", "", "6/12",
                  "12:00"),
              cardff(context, "assets/escudo.png", "Por definirse", "", "6/12",
                  "16:00"))
        ]));
  }
}
