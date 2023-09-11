import 'package:flutter/material.dart';

import 'constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onTap, required this.text,
  });

  final void Function()? onTap;
  final String text;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
          color: kprimaryColor,
          border: Border.all(
            color: kprimaryColor,
            width: 5, // Adjust the border width as needed
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}