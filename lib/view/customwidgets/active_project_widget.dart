import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/screensize.dart';

class ActiveProject extends StatelessWidget {
  final int percentage;
  final String projectName;
  final int hoursProgress;

  final Color containerColor;

  const ActiveProject({
    super.key,
    required this.percentage,
    required this.projectName,
    required this.hoursProgress,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: screenHeight(context) * 0.02,
          top: screenHeight(context) * 0.02),
      child: Container(
          width: (screenWidth(context) * 0.4),
          height: (screenHeight(context) * 0.2),
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "$percentage%",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        projectName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "$hoursProgress hours progress",
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
