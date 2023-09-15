import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/model/vars.dart';
import 'package:flutter_layout_challenge/view/customwidgets/task_widget.dart';

class MyTasks extends StatelessWidget {
  const MyTasks({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 16, top: 4, right: 16),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 4, right: 4, bottom: 4, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Tasks',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    width: iconBackgroundSize,
                    height: iconBackgroundSize,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.teal,
                    ),
                    child: const Icon(
                      Icons.date_range_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.3,
              child: const Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Task(
                        iconBackground: Colors.red,
                        icon: Icons.battery_0_bar,
                        title: 'To Do',
                        amountOfTasks: 5,
                      ),
                      Task(
                        iconBackground: Colors.green,
                        icon: Icons.battery_4_bar,
                        title: 'In Progress',
                        amountOfTasks: 1,
                      ),
                      Task(
                        iconBackground: Colors.blue,
                        icon: Icons.battery_full,
                        title: 'Done',
                        amountOfTasks: 18,
                      ),
                      Task(
                        iconBackground: Colors.yellow,
                        icon: Icons.ring_volume_outlined,
                        title: 'Ring',
                        amountOfTasks: 3,
                      ),
                      Task(
                        iconBackground: Colors.purple,
                        icon: Icons.abc,
                        title: 'Favor',
                        amountOfTasks: 23,
                      ),
                      Task(
                        iconBackground: Colors.grey,
                        icon: Icons.recent_actors,
                        title: 'Protection',
                        amountOfTasks: 9,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
