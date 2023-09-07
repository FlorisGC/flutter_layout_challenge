import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/controller/profilebox_addons/hamburger.dart';
import 'package:flutter_layout_challenge/controller/profilebox_addons/search.dart';
import 'package:flutter_layout_challenge/screensize.dart';

class BoxProfile extends StatelessWidget {
  const BoxProfile({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            width: screenWidth(context),
            height: screenHeight(context) * 0.25,
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileHamburger(),
                        ProfileSearch(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
