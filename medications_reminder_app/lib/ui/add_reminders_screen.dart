import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

//Note that the colors are #2c7b4b(main colour) and sub colours #fdfcff and #40b26d for button
//I already added the google fonts package, use poppins
//I'M COUNTING ON YOU!!!
class RemindersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Reminders());
  }
}


// TODO: REMEMBER TO CHANGE THE ROUTES SO THUNDER DOESN'T FIRE YOU THIS BOY


// So I used a package for the Reminder it's a bottom-sheet package 

class Reminders extends StatefulWidget {
  @override
  _RemindersState createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        bottomSheet: SolidBottomSheet(
          body: Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Add New Medicine', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,)),
                      IconButton(onPressed: null,icon: Icon(Icons.close, size: 30,),)
                  ],
              ),
                )
            ],
            ),
          ), 
          headerBar: Container(height:20,color: Colors.blue,),
        ),
      ),
    );
  }
}
