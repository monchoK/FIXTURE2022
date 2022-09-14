import 'package:fixture2022/buttons_and_widgets/buttons.dart';
import 'package:fixture2022/screens/groupStage_screen.dart';
import 'package:flutter/material.dart';

import '../buttons_and_widgets/drawer.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer1(context),
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: appBar1(context, "Fifa Word Cup 2022"),
      body: body1(context),
    );
  }
}

Container body1(BuildContext context) {
  return Container(
    width: 400,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          Theme.of(context).backgroundColor,
          Theme.of(context).canvasColor,
        ])),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(
        flex: 2,
        child: buttonMainScreen(context, " Group Stage", const GroupStage()),
      ),
      Flexible(flex: 4, child: Image.asset("assets/Laeeb.png")),
      Flexible(
        flex: 2,
        child: buttonMainScreen(context, "Play Off", null),
      ),
    ]),
  );
}
