// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:manageit/services/theme_services.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Column(
        children: [
          Text(
            'Theme Data',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}

_appbar() {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        ThemeServices().switch_theme();
      },
      child: const Icon(
        Icons.nightlight_round,
        size: 30,
      ),
    ),
    actions: const [
      Icon(
        Icons.person,
        size: 30,
      ),
      SizedBox(width: 5)
    ],
  );
}
