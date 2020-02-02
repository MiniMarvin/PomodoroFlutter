import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(PomodoroTimer());

class PomodoroTimer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
     return  Scaffold(
        appBar: AppBar(
          title: Text("dale fi"),
        ),
        body: PauseButton(100, 100),
      );
  }
}

class PauseButtonState extends State<PauseButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          width: widget.width,
          height: widget.height,
          child: new RawMaterialButton(
            onPressed: () => {},
            shape: new CircleBorder(),
            elevation: 0,
            child: Icon(Icons.pause, color: Colors.white),
            fillColor: Colors.orange,
          )),
    );
  }
}

class PauseButton extends StatefulWidget {
  final double width;
  final double height;

  PauseButton(this.width, this.height);

  @override
  PauseButtonState createState() => PauseButtonState();
}
