import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String imagePath;

  const CircularImage({
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          "assets/img/$imagePath",
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
