import 'package:flutter/material.dart';
import 'package:xogame/usersScreen.dart';
import 'HomePage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Homepage.routeName:(context)=>Homepage(),
        Usersscreen.routeName:(context)=>Usersscreen(),
      },
      initialRoute: Usersscreen.routeName,
    );
  }
}
