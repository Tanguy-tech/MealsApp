import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  final double? height, width;
  const Skeleton(this.height, this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}
