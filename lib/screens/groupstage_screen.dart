import 'package:flutter/material.dart';
import 'package:fixture2022/widgets/widgets.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:fixture2022/database/databaseref.dart';

import 'package:firebase_database/firebase_database.dart';

class GroupStage extends StatefulWidget {
  const GroupStage({Key? key}) : super(key: key);

  @override
  State<GroupStage> createState() => _GroupStageState();
}

class _GroupStageState extends State<GroupStage> {
  Card groupStage(
    BuildContext context,
    groupName,
    query,
  ) {
    return Card(
      margin: const EdgeInsets.all(20),
      elevation: 10,
      borderOnForeground: true,
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: SizedBox(
        height: 150,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Flexible(
              flex: 1,
              child: Text(groupName,
                  style: Theme.of(context).textTheme.headline2)),
          divider(),
          dataCards(context),
          divider(),
          Flexible(flex: 3, child: firebaseAnimatedList(query))
        ]),
      ),
    );
  }

  FirebaseAnimatedList firebaseAnimatedList(
    dbReferencia,
  ) {
    return FirebaseAnimatedList(
        shrinkWrap: false,
        query: dbReferencia,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          Map grupoReferencia = snapshot.value as Map;
          grupoReferencia[""] = snapshot.key;
          return listItem(grupoReferencia, context);
        });
  }

  Widget listItem(equipo, context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: 40,
            child: Text(equipo["ISO3"],
                style: Theme.of(context).textTheme.headline4)),
        Text(
          equipo["PJ"].toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(equipo["G"].toString(),
            style: Theme.of(context).textTheme.headline4),
        Text(equipo["E"].toString(),
            style: Theme.of(context).textTheme.headline4),
        Text(equipo["P"].toString(),
            style: Theme.of(context).textTheme.headline4),
        Text(equipo["GF"].toString(),
            style: Theme.of(context).textTheme.headline4),
        Text(equipo["GC"].toString(),
            style: Theme.of(context).textTheme.headline4),
        Text(equipo["DG"].toString(),
            style: Theme.of(context).textTheme.headline4),
        Text(equipo["PTS"].toString(),
            style: Theme.of(context).textTheme.headline4)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar1(context, "Group Stage"),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Theme.of(context).backgroundColor,
                Theme.of(context).canvasColor
              ])),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              groupStage(context, "Grupo A", dbRef),
              groupStage(context, "Grupo B", dbRef2),
              groupStage(context, "Grupo C", dbRef3),
              groupStage(context, "Grupo D", dbRef4),
              groupStage(context, "Grupo E", dbRef5),
              groupStage(context, "Grupo F", dbRef6),
              groupStage(context, "Grupo G", dbRef7),
              groupStage(context, "Grupo H", dbRef8)
            ],
          ),
        ));
  }
}
