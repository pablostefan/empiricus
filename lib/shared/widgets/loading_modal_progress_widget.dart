import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_opacity.dart';
import 'package:flutter/material.dart';

class LoadingModalProgressWidget extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const LoadingModalProgressWidget({super.key, required this.child, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      child,
      Visibility(
          visible: isLoading,
          child:
              const Opacity(opacity: AppOpacity.oneThird, child: ModalBarrier(dismissible: false, color: Colors.grey))),
      Visibility(visible: isLoading, child: const Center(child: CircularProgressIndicator(color: AppColors.monoWhite)))
    ]);
  }
}
