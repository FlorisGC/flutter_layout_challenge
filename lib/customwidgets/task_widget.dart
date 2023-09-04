import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final Color iconBackground;
  final Icon icon;
  final String title;
  final String amountOfTasks;

  const Task({super.key, 
    required this.iconBackground,
    required this.icon,
    required this.title,
    required this.amountOfTasks
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: iconBackground,
                                      ),
                                      child: IconButton(icon: icon,
                                      onPressed: () {
                                        //toDoPressed();
                                      }
                                      ,)
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                          Text(
                                            title,
                                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                                            ),
                                        Text(amountOfTasks)
                                      ],
                                    ),
                                  )
                                ],
                            );
  }

}