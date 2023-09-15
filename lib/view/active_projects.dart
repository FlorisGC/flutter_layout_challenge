import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/model/vars.dart';
import 'package:flutter_layout_challenge/view/customwidgets/active_project_widget.dart';

class ActiveProjects extends StatelessWidget {
  const ActiveProjects({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 12, left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Active Projects',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.2,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Row(
                      children: [
                        ActiveProject(
                          percentage: 25,
                          projectName: 'Medical App',
                          hoursProgress: 6,
                          containerColor: Colors.teal,
                        ),
                        ActiveProject(
                          percentage: 60,
                          projectName: 'Making History Notes',
                          hoursProgress: 20,
                          containerColor: Colors.red,
                        ),
                        ActiveProject(
                          percentage: 47,
                          projectName: 'Souls',
                          hoursProgress: 13,
                          containerColor: Colors.black,
                        ),
                        ActiveProject(
                          percentage: 36,
                          projectName: 'Olympus',
                          hoursProgress: 9,
                          containerColor: Colors.pink,
                        ),
                        ActiveProject(
                          percentage: 91,
                          projectName: 'The Search',
                          hoursProgress: 29,
                          containerColor: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
