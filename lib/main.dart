import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/cart/cart_repository.dart';
import 'package:future_store/cart/cubit/cart_cubit.dart';
import 'package:future_store/cart/views/cart.dart';
import 'package:future_store/connectivity/cubit/internet_cubit.dart';
import 'package:future_store/home/view/home.dart';
import 'package:future_store/products/cubit/product_cubit.dart';
import 'package:future_store/products/cubit/product_details_cubit.dart';
import 'package:future_store/products/product_data_repository.dart';
import 'package:future_store/shared/theme.dart';

void main() {
  runApp(
    MyApp(
      connectivity: Connectivity(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.connectivity}) : super(key: key);

  final Connectivity connectivity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(connectivity: connectivity),
      child: MaterialApp(
        title: 'Future Store',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(context),
        darkTheme: AppTheme.light(context),
        initialRoute: '/',
        routes: {
          '/': (context) => BlocProvider(
                create: (context) =>
                    ProductCubit(productRepository: const ProductRepository()),
                child: const Home(),
              ),
          '/cart': (context) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) =>
                        CartCubit(cartRepository: const CartRepository()),
                  ),
                  BlocProvider(
                    create: (context) => ProductCubit(
                        productRepository: const ProductRepository()),
                  ),
                ],
                child: const Cart(),
              )
        },
      ),
    );
  }
}
