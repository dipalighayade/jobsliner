import 'package:flutter/material.dart';
import 'package:jobsliner/events/List_Event_Info.dart';
import 'package:jobsliner/events/approval.dart';
import 'package:jobsliner/events/eve_Home.dart';
import 'package:jobsliner/events/list_tech_eve.dart';
import 'package:jobsliner/events/viewinfo.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home:  const Viewinfo(),
    );
  }
}

