import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/controller/mytasksbox_addons/tasksbutton.dart';
import 'package:flutter_layout_challenge/screensize.dart';
import 'package:flutter_layout_challenge/view/customwidgets/task_widget.dart';

class BoxMyTasks extends StatelessWidget {
  const BoxMyTasks({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Tasks',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TasksButton(),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.3,
              child: const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
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
