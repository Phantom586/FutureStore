import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/products/model/product.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key, required this.productsList}) : super(key: key);

  final List<Product> productsList;

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.productsList.length,
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
                    child: Image.network(
                      widget.productsList[index].image!,
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
                        Text(
                          widget.productsList[index].title!,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$${widget.productsList[index].price!}',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
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
