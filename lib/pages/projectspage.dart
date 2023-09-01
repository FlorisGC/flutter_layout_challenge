import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  ProjectsPageState createState() => ProjectsPageState();
}

class ProjectsPageState extends State<ProjectsPage> {

  String temp = "";
  String name = "Sourav Suman";
  String job = "App Developer";



  // void hamburgerPressed()
  // {
  //   setState(() {
  //     if (temp != "hello")
  //     {
  //     temp = "hello";
  //     } else {
  //       temp = "";
  //     }
  //   });
  // }

  // void searchPressed()
  // {
  //   setState(() {
  //     if (temp != "bye")
  //     {
  //       temp = "bye";
  //     } else {
  //       temp = "";
  //     }
  //   });
  // }


  @override
  Widget build(BuildContext context) {

  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  double container1height = screenHeight * 0.3;

    return Scaffold(
      	body: SafeArea(
          child: Center(
            child: Column(
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
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              //hamburgerPressed();
                            },
                          ),
                          Text(temp),
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
                          const ClipOval(
                            child: Image(
                              image: AssetImage('images/pfp.png'),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(fontWeight: FontWeight.bold),
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
          ),
        ),
    );
  }
}