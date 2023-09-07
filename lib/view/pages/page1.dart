import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/model/vars.dart';
import 'package:flutter_layout_challenge/view/active_projects.dart';
import 'package:flutter_layout_challenge/view/counter.dart';
import 'package:flutter_layout_challenge/view/my_tasks.dart';
import 'package:flutter_layout_challenge/view/profile.dart';

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
                child: const Profile(),
              ),
              SizedBox(
                height: screenHeight(context) * 0.75,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      MyTasks(),
                      ActiveProjects(),
                      Counter(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
