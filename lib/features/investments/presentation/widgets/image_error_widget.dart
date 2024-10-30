import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ImageErrorWidget extends StatelessWidget {
  const ImageErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: AppColors.secondaryGray,
      child: const Center(
        child: Icon(
          Icons.error,
          color: AppColors.monoBlack,
          size: 50,
        ),
      ),
    );
  }
}
