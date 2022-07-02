import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/connectivity/cubit/internet_cubit.dart';
import 'package:future_store/products/cubit/product_cubit.dart';
import 'package:future_store/shared/theme.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      listener: (context, state) {
        if (state is InternetConnected) {
          context.read<ProductCubit>().fetchProducts();
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
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/menu.png',
                        width: 24,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search_outlined),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'DISCOVER',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
