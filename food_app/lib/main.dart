// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/pages/starter_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
        home: StarterPage(),
      ),
    );
