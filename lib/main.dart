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
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(children: <Widget>[
            Text(
              "Tarefa de agora",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              "atividade 1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            RoundedButton(100, 40, Colors.green, "Terminei!"),
            PauseButton(100, 100),
          ])),
    );
  }
}

class PauseButtonState extends State<PauseButton> {
  bool paused = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: widget.width,
          height: widget.height,
          child: new RawMaterialButton(
            onPressed: () {
              setState(() {
                paused = !paused;
              });
            },
            shape: new CircleBorder(),
            elevation: 0,
            child: Icon(
              paused ? Icons.play_arrow : Icons.pause,
              color: Colors.white,
              size: widget.height <= widget.width
                  ? widget.height / 2
                  : widget.width / 2,
            ),
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

class RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(widget.height),
        side: BorderSide(color: widget.color)
      ),
      color: Colors.white,
      textColor: widget.color,
      padding: EdgeInsets.all(8),
      onPressed: () => {},
      child: Text(
        widget.content,
        style: TextStyle(
          fontSize: 14
        )
      )
    );
  }
}

class RoundedButton extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final String content;

  RoundedButton(this.width, this.height, this.color, this.content);

  @override
  State<RoundedButton> createState() => RoundedButtonState();
}

// TODO: Implement the rounded button
class TimerState extends State<Timer> {
  int time = -1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

class Timer extends StatefulWidget {
  final int time;

  Timer(this.time);

  @override
  State<Timer> createState() => TimerState();
}
