import 'package:flutter/material.dart';
import 'package:future_store/shared/common_shimmer_widget.dart';

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            mainAxisExtent: 220),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CommonShimmerWidget(
                    width: size.width,
                    height: size.height * 0.12,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CommonShimmerWidget(
                  width: size.width,
                  height: 30,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CommonShimmerWidget(
                      width: 50,
                      height: 20,
                    ),
                    CommonShimmerWidget(
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
