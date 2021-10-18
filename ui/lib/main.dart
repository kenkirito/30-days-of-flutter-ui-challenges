import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:liquid_swipe/Helpers/LiquidSwipeChildDelegate.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

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
            body: LiquidSwipe(
      pages: pages,
      fullTransitionValue: FULL_TRANSITION_PX,
      initialPage: 0,
      slideIconWidget: const Icon(Icons.arrow_back_ios),
      positionSlideIcon: 0.54,
      enableLoop: true,
      waveType: WaveType.liquidReveal,
      liquidController: LiquidController(),
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
          'assets/profile.png',
          fit: BoxFit.cover,
        ),
        Column(children: <Widget>[
          new Text(
            "Hi 🤟",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
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
        Padding(padding: const EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            new Text(
              "Software developer 😎",
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
        Padding(padding: const EdgeInsets.all(10.0)),
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
