import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


_openURL() async {
  const url = 'https://pph.me/bintofajjal';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'can\'t launch URL';
  }
}

_openMail() async {
  const url = 'mailto:habib@bintofajjal.info';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'can\'t launch URL';
  }
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[600],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white30,
                radius: 73.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/habib.png'),
                  radius: 70.0,
                ),
              ),
              Text(
                'Habib Bin Tofajjal',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'LobsterTwo-Bold',
                ),
              ),
              Text(
                'WEB & FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Viga-Regular',
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white54,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mood,
                    color: Colors.deepOrange[500],
                    size: 30.0,
                  ),
                  title: Text(
                    'Hire Me on PeoplePerHour',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.deepPurpleAccent[800],
                      fontFamily: 'Viga-Regular',
                    ),
                  ),
                  onTap: () {
                    _openURL();
                  },
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail_outline,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  title: Text('Habib@BinTofajjal.info',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.deepPurpleAccent[800],
                        fontFamily: 'Viga-Regular',
                      )
                  ),
                  onTap: () {
                    _openMail();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
