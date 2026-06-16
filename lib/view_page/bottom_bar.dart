import 'package:counter_app/view_page/details_view.dart';
import 'package:counter_app/view_page/home_view.dart';
import 'package:counter_app/view_page/setting_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBarView> {
  int currentIndex=0;
  List screen=[HomeView(), SettingView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (int number){
            setState(() {
              currentIndex=number;
            });
          },
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home" ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting" )
          ]),
      body: screen[currentIndex],
    );
  }
}
