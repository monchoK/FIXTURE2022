import 'package:fixture2022/database/databaseref.dart';
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
              cardff(context, flags[23], flags[14], "Paises Bajos", "3",
                  "Estados Unidos", "1", "3/12", "12:00"),
              cardff(context, flags[2], flags[3], "Argentina", "2", "Australia",
                  "1", "3/12", "16:00"),
              cardff(context, flags[20], flags[10], "Japon", "1(1)", "Croacia",
                  "1(3)", "5/12", "12:00"),
              cardff(context, flags[5], flags[8], "Brasil", "4",
                  "Corea del Sur", "1", "5/12", "16:00")),
          cuartos(
              context,
              "Cuartos lado A",
              cardff(context, flags[23], flags[2], "Paises Bajos", "2(3)",
                  "Argentina", "2(4)", "9/12", "16:00"),
              cardff(context, flags[10], flags[5], "Croacia", "1(4)", "Brasil",
                  "1(2)", "9/12", "12:00")),
          semifinal(
              context,
              "Semifinal lado A",
              cardff(context, flags[2], flags[10], "Argentina", "3", "Croacia",
                  "0", "13/12", "16:00")),
          finals(
              context,
              "Final",
              cardff(context, flags[2], flags[15], "Argentina", "3(4)",
                  "Francia", "3(2)", "18/12", "12:00"),
              "ARGENTINA"),
          semifinal(
              context,
              "Semifinal lado B",
              cardff(context, flags[15], flags[21], "Francia", "2", "Marruecos",
                  "0", "14/12", "16:00")),
          cuartos(
              context,
              "Cuartos lado B",
              cardff(context, flags[18], flags[15], "Inglaterra", "1",
                  "Francia", "2", "10/12", "16:00"),
              cardff(context, flags[21], flags[25], "Marruecos", "1",
                  "Portugal", "0", "10/12", "12:00")),
          octavos(
              context,
              "Octavos lado B",
              cardff(context, flags[15], flags[24], "Francia", "3", "Polonia",
                  "1", "4/12", "12:00"),
              cardff(context, flags[18], flags[27], "Inglaterra", "3",
                  "Senegal", "0", "4/12", "16:00"),
              cardff(context, flags[21], flags[13], "Marruecos", "0(3)",
                  "España", "0(0)", "6/12", "12:00"),
              cardff(context, flags[25], flags[29], "Portugal", "6", "Suiza",
                  "1", "6/12", "16:00"))
        ]));
  }
}
