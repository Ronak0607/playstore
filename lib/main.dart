import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playstore/Screen/view/homeScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    )
  );
}