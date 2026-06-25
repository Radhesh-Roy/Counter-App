import 'package:counter_app/view_page/bottom_bar.dart';
import 'package:counter_app/view_page/home_view.dart';
import 'package:counter_app/view_page/setting_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    initialRoute: '/bottomBar',
    routes: {
      '/bottomBar': (context) => BottomBarView(),
      '/home': (context) => HomeView(),
      '/details': (context) => SettingView(),
    },
  ));
}