import 'package:flutter/material.dart';
import 'package:future_store/shared/common_shimmer_widget.dart';

class ProductDetailsShimmer extends StatelessWidget {
  const ProductDetailsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: CommonShimmerWidget(
              width: size.width * 0.6,
              height: size.height * 0.35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          CommonShimmerWidget(
            width: size.width,
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CommonShimmerWidget(
                width: 60,
                height: 30,
              ),
              CommonShimmerWidget(
                width: 100,
                height: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const CommonShimmerWidget(
            width: 100,
            height: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          CommonShimmerWidget(
            width: size.width,
            height: 100,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(top: 16),
            width: size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CommonShimmerWidget(width: 100, height: 50),
                CommonShimmerWidget(width: 100, height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
