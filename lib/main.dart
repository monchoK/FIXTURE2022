import 'package:fixture2022/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Fixture World Cup Qatar 2022",
        theme: ThemeData(
            primaryColor: const Color.fromARGB(160, 251, 176, 64),
            canvasColor: const Color.fromARGB(255, 137, 30, 53),
            secondaryHeaderColor: const Color.fromARGB(255, 251, 176, 64),
            backgroundColor: const Color.fromARGB(255, 31, 3, 9),
            textTheme: const TextTheme(
                headline1: TextStyle(
                    fontSize: 23,
                    color: Color.fromARGB(255, 31, 3, 9),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                headline2: TextStyle(
                    fontSize: 19,
                    color: Color.fromARGB(255, 31, 3, 9),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold))),
        home: const Mainscreen());
  }
}
