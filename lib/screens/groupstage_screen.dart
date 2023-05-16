// ignore_for_file: deprecated_member_use

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
      equip3Ref, equip4Ref, flag1, flag2, flag3, flag4) {
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
                  firebaseAnimatedList(equip1Ref, flag1),
                  divider(),
                  firebaseAnimatedList(equip2Ref, flag2),
                  divider(),
                  firebaseAnimatedList(equip3Ref, flag3),
                  divider(),
                  firebaseAnimatedList(equip4Ref, flag4)
                ])));
  }

  FirebaseAnimatedList firebaseAnimatedList(dbReferencia, flag) {
    return FirebaseAnimatedList(
        shrinkWrap: true,
        query: dbReferencia,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          Map equipoReferencia = snapshot.value as Map;
          equipoReferencia["key"] = snapshot.key;

          return listItem(equipoReferencia, context, flag);
        });
  }

  Widget listItem(equipo, context, flag) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(height: 30, width: 30, child: Image.asset(flag)),
            Text(equipo["ISO3"], style: Theme.of(context).textTheme.headline4),
          ]),
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
                  const Color.fromARGB(255, 31, 3, 9),
                  Theme.of(context).canvasColor
                ])),
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  groupStage(context, "Group A", dbRefQAT, dbRefECU, dbRefSEN,
                      dbRefNED, flags[26], flags[12], flags[27], flags[23]),
                  groupStage(context, "Group B", dbRefENG, dbRefIRN, dbRefUSA,
                      dbRefWAL, flags[18], flags[19], flags[14], flags[16]),
                  groupStage(context, "Group C", dbRefARG, dbRefKSA, dbRefMEX,
                      dbRefPOL, flags[2], flags[1], flags[22], flags[24]),
                  groupStage(context, "Group D", dbRefFRA, dbRefAUS, dbRefDIN,
                      dbRefTUN, flags[15], flags[3], flags[11], flags[30]),
                  groupStage(context, "Group E", dbRefESP, dbRefCRC, dbRefGER,
                      dbRefJPN, flags[13], flags[9], flags[0], flags[20]),
                  groupStage(context, "Group F", dbRefBEL, dbRefCAN, dbRefMAR,
                      dbRefCRO, flags[4], flags[7], flags[21], flags[10]),
                  groupStage(context, "Group G", dbRefBRA, dbRefSER, dbRefSUI,
                      dbRefCAM, flags[5], flags[28], flags[29], flags[6]),
                  groupStage(context, "Group H", dbRefPOR, dbRefGHA, dbRefURU,
                      dbRefKOR, flags[25], flags[17], flags[31], flags[8])
                ])));
  }
}
