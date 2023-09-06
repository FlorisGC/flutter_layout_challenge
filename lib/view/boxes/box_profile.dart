import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/screensize.dart';

class BoxProfile extends StatelessWidget {
  const BoxProfile({super.key});

    

  @override
  Widget build(BuildContext context) {


    return Column(
              children: [
                Container(
                    width: screenWidth(context),
                    height: screenHeight(context) * 0.25,
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
                              children: const [
                                Icon(Icons.menu, color: Colors.black),
                                Icon(Icons.search, color: Colors.black)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipOval(
                                  child: Image(
                                    image: const AssetImage('images/pfp.png'),
                                    width: screenHeight(context) * 0.1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "Brendan Deneve",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text("App Developer")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            );


  }


}