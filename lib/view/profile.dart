import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/controller/functions.dart';
import 'package:flutter_layout_challenge/model/vars.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            width: screenWidth(context),
            height: profileHeight,
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await openImagePicker(context);
                            setState(() {});
                          },
                          child: ClipOval(
                            child: selectedImage != null
                                ? Image.memory(
                                    selectedImage!,
                                    height: profileHeight * 0.4,
                                    width: profileHeight * 0.4,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'images/pfp.png',
                                    height: profileHeight * 0.4,
                                    width: profileHeight * 0.4,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(job),
                          ],
                        ),
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
