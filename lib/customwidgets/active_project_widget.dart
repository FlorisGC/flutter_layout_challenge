import 'package:flutter/material.dart';

class ActiveProject extends StatelessWidget {
  final String percentage;
  final String projectName;
  final String hoursProgress;

  final Color containerColor;

  final double width;
  final double height;

  const ActiveProject({super.key, 
    required this.percentage,
    required this.projectName,
    required this.hoursProgress,

    required this.containerColor,
    
    required this.width,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return Container( width: width, height: height,
                            decoration: BoxDecoration(
                              color: containerColor,
                              borderRadius: const BorderRadius.all(Radius.circular(30))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(percentage, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(projectName, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                        Text(hoursProgress, style: const TextStyle(fontSize: 10, color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                            );
  }

}