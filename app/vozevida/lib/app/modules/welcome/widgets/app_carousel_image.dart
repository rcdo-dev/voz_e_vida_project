import 'package:flutter/material.dart';

class AppCaroulselImage extends StatelessWidget {
  final String pathImage;
  final double scale;

  const AppCaroulselImage({
    super.key,
    required this.pathImage,
    this.scale = 1.5,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      pathImage,
      fit: BoxFit.none,
      scale: scale,
    );
  }
}
