import 'dart:developer';

import 'package:flutter/material.dart';

class TuneKey extends StatelessWidget {
  const TuneKey({super.key, required this.onTap, required this.img});

  final Function() onTap;
  final String img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        img,
        width: 500,
      ),
    );
  }
}
