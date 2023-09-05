import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/boxes/box_my_tasks.dart';
import 'package:flutter_layout_challenge/boxes/box_active_projects.dart';
import 'package:flutter_layout_challenge/boxes/box_counter_button.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  ProjectsPageState createState() => ProjectsPageState();
}

class ProjectsPageState extends State<ProjectsPage> {
  String temp = "";
  String name = "Sourav Suman";
  String job = "App Developer";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double container1height = screenHeight * 0.25;
    double pfpWidth = screenHeight * 0.1;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // profile box
            Column(
              children: [
                Container(
                    width: screenWidth,
                    height: container1height,
                    decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.menu),
                                  onPressed: () {
                                    //menuPressed();
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.search),
                                  onPressed: () {
                                    //searchPressed();
                                  },
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipOval(
                                  child: Image(
                                    image: const AssetImage('images/pfp.png'),
                                    width: pfpWidth,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(job)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),

            SizedBox(
              height: screenHeight * 0.75,
              child: SingleChildScrollView(
                child: Column(children: const [
                  BoxMyTasks(),
                  BoxActiveProjects(),
                  BoxCounterButton()
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
