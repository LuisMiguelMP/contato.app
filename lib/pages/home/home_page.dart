import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello! If you're on the browser, increase '/miguel' in the end of the URL on the address bar to test the routing navigation.",
                  style: TextStyle(
                      fontSize: 13, fontFamily: "Hack", color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
