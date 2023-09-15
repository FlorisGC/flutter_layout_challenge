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
