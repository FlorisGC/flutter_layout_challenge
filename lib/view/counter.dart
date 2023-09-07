import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/controller/functions.dart';
import 'package:flutter_layout_challenge/model/vars.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(iconBackgroundSize),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('$count'),
            Container(
              width: iconBackgroundSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.plus_one_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(countUp);
                },
              ),
            ),
          ],
        ),
      );
}
