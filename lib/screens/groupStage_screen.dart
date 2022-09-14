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
  Query dbRef = FirebaseDatabase.instance.ref().child("/Mundial/Grupo C");
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
            equipos["ISO3"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["PJ"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["G"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["E"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["P"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["GF"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["GC"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["DG"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 17),
          Text(
            equipos["PTS"].toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1(context, "Group Stage"),
      body: SizedBox(
        height: double.infinity,
        child: FirebaseAnimatedList(
            query: dbRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map<dynamic, dynamic> equipos =
                  snapshot.value as Map<dynamic, dynamic>;
              equipos["key"] = snapshot.key;

              return listItem(equipos: equipos);
            }),
      ),
    );
  }
}
