import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasnim/presentation/screens/home/home_screen.dart';
import 'package:tasnim/presentation/screens/login/login_screen.dart';

void main() {
  if (Platform.isIOS) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
    );
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
