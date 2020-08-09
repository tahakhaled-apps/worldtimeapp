import 'package:flutter/material.dart';
import 'package:worldtimeapi/pages/home.dart';
import 'package:worldtimeapi/pages/loading.dart';
import 'package:worldtimeapi/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context)=> Loading(),
    '/Home': (context) => Home(),
    '/Choose Location':(context)=> ChooseLocation(),
  },
));
