import 'package:fixture2022/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PlayOff extends StatefulWidget {
  const PlayOff({Key? key}) : super(key: key);

  @override
  State<PlayOff> createState() => PlayOffState();
}

class PlayOffState extends State<PlayOff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: appBar1(context, "Play Off"),
      body: Center(
        child: Container(
            height: 300,
            width: 300,
            color: Colors.greenAccent.shade400,
            child: const Center(child: Text("PROXIMAMENTE"))),
      ),
    );
  }
}
