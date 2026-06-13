import 'dart:developer';

import 'package:counter_app/view_page/details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/custom_appbar.dart';
import '../widget/custom_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
   int count=0;

  void increment(){
    count++;
    setState(() {

    });
  }

  void decrement(){
    count--;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Home"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(onPressed:(){
                  increment();
                },title: 'Increment', textColor: Colors.green, backgroundColor: Colors.green,),
                SizedBox(width: 15,),
                CustomButton(onPressed:(){
                  decrement();
                },title: 'Decrement', textColor: Colors.red, backgroundColor: Colors.red,),
              ],
            ),
            SizedBox(height: 15,),
            CustomButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsView(number: count,)));
              log("Radhesh");
            },title: 'Details', textColor: Colors.grey, backgroundColor: Colors.grey,),
          ],
        ),
      ),
    );
  }
}


