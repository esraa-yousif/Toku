import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({Key? key, this.text, this.color, this.onTap}) : super(key: key);

  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        height: 65,
        width: double.infinity,
        color: color,
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
