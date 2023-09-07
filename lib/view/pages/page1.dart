import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/controller/box_counter.dart';
import 'package:flutter_layout_challenge/screensize.dart';
import 'package:flutter_layout_challenge/view/boxes/box_active_projects.dart';
import 'package:flutter_layout_challenge/view/boxes/box_my_tasks.dart';
import 'package:flutter_layout_challenge/view/boxes/box_profile.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  ProjectsPageState createState() => ProjectsPageState();
}

class ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight(context) * 0.25,
                child: const BoxProfile(),
              ),
              SizedBox(
                height: screenHeight(context) * 0.75,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      BoxMyTasks(),
                      BoxActiveProjects(),
                      BoxCounter(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
