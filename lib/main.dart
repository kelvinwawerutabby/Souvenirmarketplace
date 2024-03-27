import 'package:flutter/material.dart';
import 'package:eccomerceapp/utils/theme/theme.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  //Add Widgets Binding
  //Init Local Storage
  //Await Native Splash
  //Initialize Firebase
  //Initialize Authentication
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  
  runApp(const SApp());
}


