import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_image_picker/flutter_image_picker.dart';
import 'package:flutter_layout_challenge/model/vars.dart';

void countUp() {
  count++;
}

Future<void> openImagePicker(BuildContext context) async {
  var imageInBytes = await showModalBottomSheet<Uint8List?>(
    context: context,
    backgroundColor: Colors.white,
    builder: (BuildContext context) => const ImagePicker(),
  );
  if (imageInBytes != null) {
    selectedImage = imageInBytes;
  }
}

Future<void> showChangeNameDialog(
  BuildContext context,
  TextEditingController controller,
) async {
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Change Name'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'New Name',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    ),
  );
}

Future<void> showChangeJobDialog(
  BuildContext context,
  TextEditingController controller,
) async {
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Change Job'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'New Job',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    ),
  );
}
