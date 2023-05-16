import 'package:fixture2022/screens/fifa_screens.dart';
import 'package:flutter/material.dart';

Drawer drawer1(BuildContext context) {
  return Drawer(
    width: 250,
    elevation: 20,
    backgroundColor: Theme.of(context).canvasColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DrawerHeader(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                const Color.fromARGB(255, 31, 3, 9),
                Theme.of(context).canvasColor,
              ])),
          child: Row(children: [
            Flexible(
              flex: 1,
              child: Image.asset(
                "assets/logo_qatar.png",
                color: const Color.fromARGB(255, 31, 3, 9),
              ),
            ),
            Flexible(
              flex: 2,
              child: Text(
                "OPTIONS",
                style: Theme.of(context).textTheme.headline1,
              ),
            )
          ]),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buttonsdrawer(
                context, Icons.newspaper, "Fifa News", const NewsScreen()),
            buttonsdrawer(context, Icons.sports_soccer, "Fifa Ranking",
                const RankingScreen()),
            const SizedBox(
              height: 80,
            ),
            Image.asset("assets/laeeb2.png"),
            const SizedBox(
              height: 65,
            ),
            aboutListTile(context)
          ],
        )
      ],
    ),
  );
}

ListTile buttonsdrawer(BuildContext context, newicon, newtitle, ruta) {
  return ListTile(
      leading: Icon(newicon, size: 35),
      title: Text(
        newtitle,
        style: Theme.of(context).textTheme.headline2,
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ruta));
      });
}

AboutListTile aboutListTile(BuildContext context) {
  return AboutListTile(
    applicationIcon: Image.asset(
      "assets/logo_qatar.png",
      width: 110,
      height: 110,
    ),
    icon: const Icon(Icons.info),
    applicationName: "Qatar World Cup Fixture 2022",
    child: Text(
      "About ",
      style: Theme.of(context).textTheme.headline2,
    ),
  );
}
