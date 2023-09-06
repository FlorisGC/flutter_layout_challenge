import 'package:flutter/material.dart';

class BoxCounter extends StatefulWidget {
  const BoxCounter({Key? key}) : super(key: key);

  @override
  BoxCounterState createState() => BoxCounterState();
}

class BoxCounterState extends State<BoxCounter> {
  double iconBackgroundSize = 48;
  int count = 0;

  void countUp() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(iconBackgroundSize),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text("$count"),
        Container(
          width: iconBackgroundSize,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          child: IconButton(
            icon: const Icon(
              Icons.plus_one_rounded,
              color: Colors.white,
            ),
            onPressed: () => countUp(),
          ),
        )
      ]),
    );
  }
}
