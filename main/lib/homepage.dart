import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // state variables
  int numberOfTimesTapped = 0;
  Color backgroundColor = Colors.grey;

  // method #1 counter
  void _increaseNumber() {
      setState(() {
        numberOfTimesTapped++;

      // Color Conditional statement
        if (numberOfTimesTapped > 10) {
          backgroundColor = Colors.red;
        } else if (numberOfTimesTapped > 5) {
          backgroundColor = Colors.yellow;
        } else {
          backgroundColor = Colors.grey;
        }


    });
  }

  // method #2 long press reset counter and color to grey
  void _resetApp() {
    setState(() {
      numberOfTimesTapped = 0;
      backgroundColor = Colors.grey;
    });
    }

  // Ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                'Tapped ${numberOfTimesTapped.toString()} times',
                style: TextStyle(fontSize: 30)
            ),
            GestureDetector(
              onTap: _increaseNumber,
              onLongPress: _resetApp,
              child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.green,
              child: Text(
                  'TAP HERE',
                  style: TextStyle(fontSize: 30)
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}