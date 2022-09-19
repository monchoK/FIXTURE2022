import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:fixture2022/widgets/widgets.dart';
import 'package:fixture2022/database/databaseref.dart';

class GroupStage extends StatefulWidget {
  const GroupStage({Key? key}) : super(key: key);

  @override
  State<GroupStage> createState() => _GroupStageState();
}

class _GroupStageState extends State<GroupStage> {
  Card groupStage(BuildContext context, groupName, equip1Ref, equip2Ref,
      equip3Ref, equip4Ref) {
    return Card(
        margin: const EdgeInsets.all(20),
        elevation: 10,
        borderOnForeground: true,
        color: Theme.of(context).cardColor,
        shadowColor: Theme.of(context).secondaryHeaderColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: SizedBox(
            height: 200,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(groupName,
                      softWrap: true,
                      style: Theme.of(context).textTheme.headline2),
                  divider(),
                  dataCards(context),
                  divider(),
                  firebaseAnimatedList(equip1Ref),
                  divider(),
                  firebaseAnimatedList(equip2Ref),
                  divider(),
                  firebaseAnimatedList(equip3Ref),
                  divider(),
                  firebaseAnimatedList(equip4Ref)
                ])));
  }

  FirebaseAnimatedList firebaseAnimatedList(dbReferencia) {
    return FirebaseAnimatedList(
        shrinkWrap: true,
        query: dbReferencia,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          Map equipoReferencia = snapshot.value as Map;
          equipoReferencia["key"] = snapshot.key;
          return listItem(equipoReferencia, context);
        });
  }

  Widget listItem(equipo, context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(equipo["ISO3"], style: Theme.of(context).textTheme.headline4),
          Text(equipo["PJ"].toString(),
              style: Theme.of(context).textTheme.headline4),
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
        ]);
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
                  groupStage(context, "Group A", dbRefQAT, dbRefECU, dbRefSEN,
                      dbRefNED),
                  groupStage(context, "Group B", dbRefENG, dbRefIRN, dbRefUSA,
                      dbRefWAL),
                  groupStage(context, "Group C", dbRefARG, dbRefKSA, dbRefMEX,
                      dbRefPOL),
                  groupStage(context, "Group D", dbRefFRA, dbRefAUS, dbRefDIN,
                      dbRefTUN),
                  groupStage(context, "Group E", dbRefESP, dbRefCRC, dbRefGER,
                      dbRefJPN),
                  groupStage(context, "Group F", dbRefBEL, dbRefCAN, dbRefMAR,
                      dbRefCRO),
                  groupStage(context, "Group G", dbRefBRA, dbRefSER, dbRefSUI,
                      dbRefCAM),
                  groupStage(context, "Group H", dbRefPOR, dbRefGHA, dbRefURU,
                      dbRefKOR)
                ])));
  }
}
