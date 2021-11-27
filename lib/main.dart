import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(WhatApp());
}

class WhatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatApp Clon',
      // theme: theme.copyWith(
      //   accentColor: const Color(0xff25d366),
      //   colorScheme: theme.colorScheme
      //       .copyWith(primary: Color(0xff075e54), secondary: Color(0xff25d366)),
      // ),
      theme: ThemeData(
        accentColor: const Color(0xff25d366),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xff075e54),
            secondary: const Color(0xff25d366)),
      ),
      home: Home(),
    );
  }
}
