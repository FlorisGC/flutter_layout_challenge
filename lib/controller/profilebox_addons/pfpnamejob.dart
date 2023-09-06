import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_image_picker/flutter_image_picker.dart';
import 'package:flutter_layout_challenge/screensize.dart';

class ProfilePfpNameJob extends StatefulWidget {
  const ProfilePfpNameJob({super.key});

  @override
  State<ProfilePfpNameJob> createState() => ProfilePfpNameJobState();
}

class ProfilePfpNameJobState extends State<ProfilePfpNameJob> {
  String name = "Brendan Deneve";
  String job = "App Dev";
  Uint8List? _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: _pickImage,
          child: ClipOval(
              child: _pickedImage != null
                  ? Image.memory(
                      _pickedImage!,
                      width: screenHeight(context) * 0.1,
                      height: screenHeight(context) * 0.1,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'images/pfp.png',
                      width: screenHeight(context) * 0.1,
                      height: screenHeight(context) * 0.1,
                      fit: BoxFit.cover,
                    )),
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
    );
  }

  void _pickImage() async {
    final imageInBytes = await showModalBottomSheet<Uint8List?>(
        context: context,
        backgroundColor: Colors.white,
        builder: (BuildContext context) => const ImagePicker());
    if (imageInBytes != null) {
      setState(() {
        _pickedImage = imageInBytes;
      });
    }
  }
}
