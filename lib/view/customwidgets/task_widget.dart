import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/model/vars.dart';

class Task extends StatelessWidget {
  const Task({
    required this.iconBackground,
    required this.icon,
    required this.title,
    required this.amountOfTasks,
    super.key,
  });
  final Color iconBackground;
  final IconData icon;
  final String title;
  final int amountOfTasks;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: iconBackgroundSize,
              height: iconBackgroundSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconBackground,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text('$amountOfTasks task(s)'),
              ],
            ),
          ),
        ],
      );
}
