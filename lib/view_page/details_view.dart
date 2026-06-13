import 'package:counter_app/view_page/home_view.dart';
import 'package:counter_app/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widget/custom_button.dart';

class DetailsView extends StatefulWidget {
   DetailsView({super.key, this.number});
  int? number;

  @override
  State<DetailsView> createState() => _DetailsViewState();

}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Details"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${widget.number}",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15,),
            CustomButton(onPressed:(){
              Navigator.pop(context);
            },title: 'Details', textColor: Colors.grey, backgroundColor: Colors.grey,),
          ],
        ),
      ),
    );
  }
}
