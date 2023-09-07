import 'package:flutter/material.dart';

class TasksButton extends StatelessWidget {
  const TasksButton({super.key});

  double get iconSize => 50;

  @override
  Widget build(BuildContext context) => Container(
        width: iconSize,
        height: iconSize,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.date_range_rounded),
          color: Colors.white,
        ),
      );
}
