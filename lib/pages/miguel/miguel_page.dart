import 'package:contato/controllers/redirect_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MiguelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 71.0,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 69.0,
                      backgroundImage: AssetImage('assets/miguel.png'),
                    ),
                  ),
                  SizedBox(height: 22.0, width: 150.0),
                  Text(
                    'Luís Miguel Massih Pereira',
                    style: TextStyle(
                      fontFamily: 'Hack',
                      fontSize: 21.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 7.0, width: 150.0),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'Hack',
                      color: Colors.grey[100],
                      fontSize: 18.0,
                      letterSpacing: 2.5,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 18.0, width: 150.0),
                  RaisedButton(
                    textColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    shape: StadiumBorder(),
                    child: Container(
                      width: 333,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.purple, Colors.blue])),
                      child: Stack(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '+55 (048) 99854-5953',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Hack',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    onPressed: () {
                      redirect(
                          "https://wa.me/5548998545953?text=Hi%2C%20I%20loved%20https%3A%2F%2Fcontato.app%2Fmiguel!");
                    },
                  ),
                  SizedBox(height: 13.0, width: 150.0),
                  RaisedButton(
                    textColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    shape: StadiumBorder(),
                    child: Container(
                      width: 333,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.purple, Colors.blue])),
                      child: Stack(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'lmmp1337@outlook.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Hack',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    onPressed: () {
                      var params = Uri(
                        scheme: 'mailto',
                        path: 'lmmp1337@outlook.com',
                        query:
                            'subject=Job opportunity&body=Hello! We will be happy if you work with us!',
                      );
                      redirect(params.toString());
                      ;
                    },
                  ),
                  SizedBox(height: 13.0, width: 150.0),
                  RaisedButton(
                    textColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    shape: StadiumBorder(),
                    child: Container(
                      width: 333,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.purple, Colors.blue])),
                      child: Stack(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: FaIcon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'GitHub.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Hack',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    onPressed: () {
                      redirect('https://www.github.com/luismiguelmp');
                    },
                  ),
                  SizedBox(height: 13.0, width: 150.0),
                  RaisedButton(
                    textColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    shape: StadiumBorder(),
                    child: Container(
                      width: 333,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.purple, Colors.blue])),
                      child: Stack(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'LinkedIn.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Hack',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    onPressed: () {
                      redirect('https://www.linkedin.com/in/luismiguelmp');
                    },
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
