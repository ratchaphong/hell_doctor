import 'package:flutter/material.dart';
import 'package:hell_care/gen/assets.gen.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: Assets.images.pikaLoader.provider(),
        fit: BoxFit.contain,
      ),
    );
  }
}
