import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/view/customwidgets/active_project_widget.dart';
import 'package:flutter_layout_challenge/screensize.dart';

class BoxActiveProjects extends StatelessWidget {
  const BoxActiveProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10, left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Active Projects",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: screenHeight(context) * 0.25,
              child: const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ActiveProject(
                            percentage: 25,
                            projectName: "Medical App",
                            hoursProgress: 6,
                            containerColor: Colors.teal,
                          ),
                          ActiveProject(
                            percentage: 60,
                            projectName: "Making History Notes",
                            hoursProgress: 20,
                            containerColor: Colors.red,
                          )
                        ],
                      ),
                      ActiveProject(
                          percentage: 47,
                          projectName: "Souls",
                          hoursProgress: 13,
                          containerColor: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ActiveProject(
                            percentage: 36,
                            projectName: "Olympus",
                            hoursProgress: 9,
                            containerColor: Colors.pink,
                          ),
                          ActiveProject(
                            percentage: 91,
                            projectName: "The Search",
                            hoursProgress: 29,
                            containerColor: Colors.blueGrey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
