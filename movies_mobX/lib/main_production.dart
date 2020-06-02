import 'package:flutter/material.dart';
import 'package:movies_mobX/env/app_env.dart';
import 'main.dart';

void main(){
  AppEnvironment.setupEnvironment(Environment.production);
  runApp(MyApp());
}