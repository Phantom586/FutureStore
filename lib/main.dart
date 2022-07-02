import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/connectivity/cubit/internet_cubit.dart';
import 'package:future_store/home/view/home.dart';
import 'package:future_store/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(connectivity: Connectivity()),
      child: MaterialApp(
        title: 'Future Store',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(context),
        darkTheme: AppTheme.light(context),
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
        },
      ),
    );
  }
}
