import 'package:flutter/material.dart';
import 'package:contato/pages/pages.dart';
import 'package:contato/utils/constants/constants.dart';
import 'package:contato/utils/localizations/localizations.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("lmmp1337@gmail.com"),
              accountName: Text("Luís Miguel Massih Pereira"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars0.githubusercontent.com/u/45291556?s=460&u=e850f222de0bf1cfce57fb08c0d1bf95100c96e6&v=4"),
                ),
                onTap: () {},
              ),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                    child: Icon(
                      Icons.room_preferences,
                      color: Colors.white,
                    ),
                    onTap: () {}),
              ],
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff374ABE), Color(0xff64B6FF)])),
            ),
            ListTile(
                title: Text(I18n.of(context).translate('menu-partners')),
                trailing: Icon(Icons.star),
                onTap: () {}),
            ListTile(
                title: Text(I18n.of(context).translate('menu-how')),
                trailing: Icon(Icons.help),
                onTap: () {}),
            ListTile(
                title: Text(I18n.of(context).translate('menu-contact')),
                trailing: Icon(Icons.question_answer),
                onTap: () {}),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(homeTitle),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 22.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 22.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      body: Center(
        child: Container(
          height: 51.0,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VotrePage()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(69.0)),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(33.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 321.0, minHeight: 51.0),
                alignment: Alignment.center,
                child: Text(
                  I18n.of(context).translate('button-what'),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
