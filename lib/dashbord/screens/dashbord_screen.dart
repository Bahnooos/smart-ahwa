import 'package:flutter/material.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 30),
        Text('Smart Ahwa ', style: TextStyle(fontSize: 24)),
        Text('Manager', style: TextStyle(fontSize: 24)),
      ],
    );
  }
}
