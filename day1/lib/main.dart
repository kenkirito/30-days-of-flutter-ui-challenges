import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            drawer: CurvedDrawer(
                color: Colors.white,
                labelColor: Colors.black,
                width: 75.0,
                items: <DrawerItem>[
                  DrawerItem(icon: Icon(FontAwesomeIcons.github)),
                  DrawerItem(icon: Icon(FontAwesomeIcons.linkedinIn)),
                  DrawerItem(icon: Icon(FontAwesomeIcons.mailBulk)),
                  DrawerItem(icon: Icon(FontAwesomeIcons.youtube)),
                  DrawerItem(icon: Icon(FontAwesomeIcons.twitter)),
                ],
                onTap: (index) {}),
            body: LiquidSwipe(
              pages: pages,
              fullTransitionValue: 500,
              slideIconWidget: const Icon(Icons.arrow_back_ios),
              positionSlideIcon: 0.54,
              enableLoop: true,
              waveType: WaveType.circularReveal,
              disableUserGesture: false,
              ignoreUserGestureWhileAnimating: false,
            )));
  }
}

final pages = [
  Container(
    color: Colors.purple[50],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'assets/intro.png',
          fit: BoxFit.cover,
        ),
        Column(children: <Widget>[
          new Text(
            "Hi 🤟",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          new Text(
            "I am lakshya mishra",
            style: TextStyle(
                fontSize: 25, fontFamily: "Billy", fontWeight: FontWeight.w600),
          ),
        ])
      ],
    ),
  ),
  Container(
    color: Colors.blueAccent[100],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'assets/coder.png',
          fit: BoxFit.cover,
        ),
        Column(
          children: <Widget>[
            new Text(
              "full stack developer 😎",
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
            new Text(
              "working in mern, flutter and web3 ",
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    ),
  ),
  Container(
    color: Colors.lightGreen[50],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'assets/weeb.png',
          fit: BoxFit.cover,
        ),
        Column(
          children: <Widget>[
            new Text(
              "anime weeb 😻",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    ),
  ),
];
