import 'dart:io';
import 'package:flutter/material.dart';

import 'package:image_picker_widget/image_picker_widget.dart';

class PhotoProfile extends StatefulWidget {
  const PhotoProfile({super.key, this.title});
  final String? title;
  @override
  // ignore: library_private_types_in_public_api
  _PhotoProfileState createState() => _PhotoProfileState();
}

class _PhotoProfileState extends State<PhotoProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ImagePickerWidget(
        diameter: 80,
        initialImage:
            "https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png",
        shape: ImagePickerWidgetShape.circle,
        isEditable: true,
        shouldCrop: true,
        imagePickerOptions: ImagePickerOptions(imageQuality: 65),
        onChange: (File file) {
          // ignore: avoid_print
          print("I changed the file to: ${file.path}");
        },
      ),
    );
  }
}
