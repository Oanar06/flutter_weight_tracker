import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weight_tracker/views/add_record.dart';
import 'package:flutter_weight_tracker/views/graph_screen.dart';
import 'package:get/get.dart';

import 'history.dart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  Widget _currentScreen = const GraphScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(),
        //body: GraphScreen(),
        body:  _currentScreen,
        floatingActionButton:  FloatingActionButton(
          onPressed: (){
            Get.to(() => const AddRecordView());
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.black,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          height: Get.height/12,
            gapLocation: GapLocation.center,
            backgroundColor: Colors.black,
            icons: const [Icons.show_chart, Icons.history],
            iconSize: 30,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            activeIndex: _currentTab,
            onTap: (int) {

              setState(() {
                _currentTab = int;
                _currentScreen = (int==0) ? const GraphScreen() : const HistoryScreen(); 
              });
              
            }));
  }
}
