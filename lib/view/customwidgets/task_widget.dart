import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final Color iconBackground;
  final IconData icon;
  final String title;
  final int amountOfTasks;

  const Task(
      {super.key,
      required this.iconBackground,
      required this.icon,
      required this.title,
      required this.amountOfTasks});

  @override
  Widget build(BuildContext context) {
    double iconSize = 50;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: iconSize,
            height: iconSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconBackground,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              )),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15)),
              Text("$amountOfTasks task(s)")
            ],
          ),
        )
      ],
    );
  }
}
