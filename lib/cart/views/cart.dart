import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/cart/cubit/cart_cubit.dart';
import 'package:future_store/cart/views/cart_shimmer.dart';
import 'package:future_store/cart/views/cart_view.dart';
import 'package:future_store/shared/theme.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Cart',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                  return state.when(initial: () {
                    context.read<CartCubit>().fetchCartItems();
                    return const CartShimmer();
                  }, loading: () {
                    return const CartShimmer();
                  }, loaded: (productList) {
                    return CartView(
                      productsList: productList,
                    );
                  });
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Amount',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$500',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: secondaryColor,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),
                    ),
                    child: Text(
                      'Checkout',
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: Colors.white),
                    )),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
