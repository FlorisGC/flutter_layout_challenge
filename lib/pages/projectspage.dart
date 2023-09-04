import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/customwidgets/active_project_widget.dart';

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

  double screenHeight = MediaQuery.of(context).size.height;
  double container1height = screenHeight * 0.2;
  
  double screenWidth = MediaQuery.of(context).size.width;
  double pfpWidth = screenHeight * 0.1;

    return Scaffold(
      	body: SafeArea(
          child: Center(
            child: Column(
              children: [
                // profile box
                Column(
                  children: [
                    Container(width: screenWidth, height: container1height,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                    ),
                                  Text(job)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )

                    )
                  ],
                ),

                // tasks box
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "My Tasks",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.teal
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.date_range_rounded, color: Colors.white,),
                                    onPressed: () {
                                      //datePressed();
                                    },
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red,
                                      ),
                                      child: IconButton(icon: const Icon(Icons.battery_0_bar, color: Colors.white,),
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
                                      children: const [
                                          Text(
                                            "To Do",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                                            ),
                                        Text("5 tasks now, 1 started")
                                      ],
                                    ),
                                  )
                                ],
                            ),
                            Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                      child: IconButton(icon: const Icon(Icons.battery_4_bar, color: Colors.white,),
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
                                      children: const [
                                          Text(
                                            "In Progress",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                                            ),
                                        Text("1 tasks now, 1 started")
                                      ],
                                    ),
                                  )
                                ],
                            ),
                            Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                      child: IconButton(icon: const Icon(Icons.battery_full, color: Colors.white,),
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
                                      children: const [
                                          Text(
                                            "Done",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                                            ),
                                        Text("18 tasks now, 13 started")
                                      ],
                                    ),
                                  )
                                ],
                            ),
                          ],
                        )
                      ],
                  ),
                ),

                // active box
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Active Projects",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ActiveProject(
                              percentage: "25%",
                              projectName: "Medical App",
                              hoursProgress: "6 hours progress",
                              containerColor: Colors.teal,
                              width: (screenWidth * 0.4),
                              height: (container1height * 1.2)
                              ),

                              ActiveProject(
                              percentage: "60%",
                              projectName: "Making History Notes",
                              hoursProgress: "20 hours progress",
                              containerColor: Colors.red,
                              width: (screenWidth * 0.4),
                              height: (container1height * 1.2)
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            
          ),
        ),
    );
  }
}