import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageLink;
  final double? height;
  final BoxFit? fit;

  const ImageWidget({super.key, required this.imageLink, this.height, this.fit});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageLink,
      height: height,
      fit: fit,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return Container(color: Colors.red);
        }
      },
    );
  }
}
