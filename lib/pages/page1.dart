import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/boxes/box_my_tasks.dart';
import 'package:flutter_layout_challenge/boxes/box_active_projects.dart';
import 'package:flutter_layout_challenge/boxes/box_counter_button.dart';
import 'package:flutter_layout_challenge/boxes/box_profile.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  ProjectsPageState createState() => ProjectsPageState();
}

class ProjectsPageState extends State<ProjectsPage> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    

    return Scaffold(
      body: Center(
        child: Column(
          children: [

            const BoxProfile(),

            SizedBox(
              height: screenHeight * 0.75,
              child: SingleChildScrollView(
                child: Column(children: const [

                  BoxMyTasks(),

                  BoxActiveProjects(),

                  BoxCounterButton()

                ]),
              ),
            )

          ],
        ),
      ),
    );
  }
}
