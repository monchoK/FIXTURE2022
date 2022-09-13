import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:fixture2022/buttons_and_widgets/buttons.dart';
import 'package:flutter/material.dart';

class GroupStage extends StatefulWidget {
  const GroupStage({Key? key}) : super(key: key);

  @override
  State<GroupStage> createState() => _GroupStageState();
}

class _GroupStageState extends State<GroupStage> {
  Query dbRef = FirebaseDatabase.instance.ref().child("/Countries");
  Widget listItem({required Map equipos}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 110,
      color: Colors.amberAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            equipos["ISO3"],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["Partidos_Jugados"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["Ganados"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["Empatados"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["Perdidos"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["Goles_a_favor"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["Goles_en_contra"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["Diferencias_de_goles"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["Puntos"].toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1(context, "Group Stage"),
      body: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
            query: dbRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map equipos = snapshot.value as Map;
              equipos["key"] = snapshot.key;

              return listItem(equipos: equipos);
            }),
      ),
    );
  }
}
