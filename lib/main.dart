import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_weight_tracker/views/home.dart';
import 'package:get/get.dart';


void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weight Tracker',
      theme: ThemeData(
       appBarTheme:  const AppBarTheme(
        backgroundColor: Colors.black
       )
        
      ),
      home: const Home(),
    );
  }
}
  