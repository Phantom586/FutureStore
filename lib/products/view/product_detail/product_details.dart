import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/connectivity/cubit/internet_cubit.dart';
import 'package:future_store/products/cubit/product_details_cubit.dart';
import 'package:future_store/products/model/product.dart';
import 'package:future_store/products/view/product_detail/product_detail_view.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetCubit, InternetState>(
      listener: (context, state) {
        if (state is InternetConnected) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Internet Connected',
              ),
            ),
          );
        } else if (state is InternetDisconnected) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Internet Disconnected',
              ),
            ),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
            child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            return state.when(initial: () {
              context
                  .read<ProductDetailsCubit>()
                  .getProductDetails(product.id!);
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, loaded: (productDetails) {
              return ProductDetailView(
                product: productDetails,
              );
            });
          },
        )),
      ),
    );
  }
}
