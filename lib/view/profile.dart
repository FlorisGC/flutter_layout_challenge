import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/controller/functions.dart';
import 'package:flutter_layout_challenge/model/vars.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = name;
    jobController.text = job;
  }

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
                          onPressed: () async {
                            await showChangeNameDialog(context, nameController);
                            setState(() {});
                          },
                          icon: const Icon(Icons.menu),
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: () async {
                            await showChangeJobDialog(context, jobController);
                            setState(() {});
                          },
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
                              nameController.text,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(jobController.text),
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
