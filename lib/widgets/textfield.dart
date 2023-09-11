import 'package:flutter/material.dart';

import 'constants.dart';

class CvTexfield extends StatelessWidget {
  const CvTexfield({
    super.key,
    required this.fullNameController, required this.labelText,
  });

  final TextEditingController fullNameController;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
  controller: fullNameController,
  decoration: InputDecoration(
    labelText: labelText,
    labelStyle: const TextStyle(
      color: kprimaryColor, // Set the label text color
    ),
    hintText: labelText,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        width: 3,
        color: kprimaryColor),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        width: 3,
        color: kprimaryColor, // Set the focused border color
      ),
  ),
  )
);
  }
}
