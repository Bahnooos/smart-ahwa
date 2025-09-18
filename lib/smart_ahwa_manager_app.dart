import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager_app/home/screens/home_screen.dart';

class SmartAhwaManagerApp extends StatelessWidget {
  const SmartAhwaManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Ahwa Manager App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
