import 'package:flutter/material.dart';

import 'homeScreen/homeScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        backgroundColor: Colors.blueAccent,
        brightness: Brightness.light,
        useMaterial3: true
      ),
     home: HomeScreen(),
    );
  }
}