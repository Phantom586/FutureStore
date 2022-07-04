import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CommonShimmerWidget extends StatelessWidget {
  const CommonShimmerWidget(
      {Key? key, required this.width, required this.height})
      : super(key: key);

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey.shade400,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey,
        ),
      ),
    );
  }
}
