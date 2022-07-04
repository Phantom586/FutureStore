import 'package:flutter/material.dart';
import 'package:future_store/shared/common_shimmer_widget.dart';

class CartShimmer extends StatelessWidget {
  const CartShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: CommonShimmerWidget(
                      height: size.height * 0.06,
                      width: size.width * 0.1,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonShimmerWidget(width: size.width, height: 25),
                        const SizedBox(
                          height: 10,
                        ),
                        const CommonShimmerWidget(width: 50, height: 25),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
