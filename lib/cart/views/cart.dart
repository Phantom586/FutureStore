import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/cart/cubit/cart_cubit.dart';
import 'package:future_store/cart/views/cart_view.dart';

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
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Cart',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: SingleChildScrollView(
              child:
                  BlocBuilder<CartCubit, CartState>(builder: (context, state) {
                return state.when(initial: () {
                  context.read<CartCubit>().fetchCartItems();
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }, loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }, loaded: (productList) {
                  return CartView(
                    productsList: productList,
                  );
                });
              }),
            ))
          ],
        ),
      )),
    );
  }
}
