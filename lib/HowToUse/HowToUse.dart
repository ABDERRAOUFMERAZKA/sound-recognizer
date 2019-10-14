import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('1/- Click in Listen Button for start registrement', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('2/- Click in stop Button for stop registrement...........', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('3/- Click in cancel Button for cancel registrement....', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                  ],
                )
              ]
          )
      ),
    );
  }
}