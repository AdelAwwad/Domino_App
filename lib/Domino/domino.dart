// import 'package:flutter/material.dart';
// class DominoPage extends StatelessWidget {
//   const DominoPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
import 'dart:ffi';

import 'package:flutter/material.dart';

class DominoPage extends StatefulWidget {

  const DominoPage({super.key});

  @override
  State<DominoPage> createState() => _BasketBallAppState();
}

class _BasketBallAppState extends State<DominoPage> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Point Counter",
          style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 30),
        ),
        backgroundColor: Colors.orange,
      ),
      body: _Page1(),
    );
  }

  Widget _Page1() {
    return Column(
      children: [
        _counter(),
        SizedBox(
          height: 80,
        ),
        _rst(),
      ],
    );
  }

  Widget _counter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text("Team A",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30)),
              Text('$teamAPoints',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 140)),

              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 480,
          child: VerticalDivider(
            thickness: 2,// Divider height
            color: Colors.grey, // Divider color
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text("Team B",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30)),
              Text("$teamBPoints",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 140)),

            ],
          ),
        )
      ],
    );
  }

  Widget _rst() {
    return ElevatedButton(onPressed: (){setState(() {
      teamAPoints=0;
      teamBPoints=0;
    });}, child: Text("Reset" ,style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 20),),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          padding: EdgeInsets.only(left: 70,right: 70),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)
          )
      ),);
  }
}
