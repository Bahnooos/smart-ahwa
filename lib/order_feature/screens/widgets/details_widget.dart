import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 18)),
        subtitle: Text(subTitle, style: TextStyle(fontSize: 14)),
      ),
    );
  }
}