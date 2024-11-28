import 'dart:ffi';

import 'package:flutter/material.dart';

class BasketBallApp extends StatefulWidget {

  const BasketBallApp({super.key});

  @override
  State<BasketBallApp> createState() => _BasketBallAppState();
}

class _BasketBallAppState extends State<BasketBallApp> {
  int teamAPoints = 4;
  int teamBPoints = 4;
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
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamAPoints++;
                  });
                },
                child: Text("Add 1 point",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamAPoints = teamAPoints+2;
                  });
                },
                child: Text("Add 2 point",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamAPoints= teamAPoints+3;
                  });
                },
                child: Text("Add 3 point",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
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
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamBPoints++;
                  });
                },
                child: Text("Add 1 point",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamBPoints= teamBPoints+2;
                  });
                },
                child: Text("Add 2 point",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamBPoints= teamBPoints+3;
                  });
                },
                child: Text("Add 3 point",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
              ),
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
