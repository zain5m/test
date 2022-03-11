import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_responsive/desktoop.dart';
import 'package:test_responsive/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Builder(
        builder: (context) {
          if (MediaQuery.of(context).size.width <= 560) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 0.7),
                child: const MobileScreen());
          }

          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.25),
              child: const DeskToopScreen());
        },
      ),
      // home: LayoutBuilder(
      //   builder: (context, constraints) {
      //     if (constraints.minWidth.toInt() <= 560) return MobileScreen();

      //     return DeskToopScreen();
      //   },
      // ),
    );
  }
}
