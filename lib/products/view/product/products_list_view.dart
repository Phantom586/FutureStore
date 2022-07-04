import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/products/cubit/product_cubit.dart';
import 'package:future_store/products/cubit/product_details_cubit.dart';
import 'package:future_store/products/model/product.dart';
import 'package:future_store/products/product_data_repository.dart';
import 'package:future_store/products/view/product_detail/product_details.dart';
import 'package:intl/intl.dart';

class ProductsListView extends StatefulWidget {
  const ProductsListView({Key? key, required this.productsList})
      : super(key: key);

  final List<Product> productsList;

  @override
  State<ProductsListView> createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GridView.builder(
        itemCount: widget.productsList.length,
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
                  child: Hero(
                    tag: widget.productsList[index].id!,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider(
                            create: (context) => ProductDetailsCubit(
                                productRepository: const ProductRepository()),
                            child: ProductDetails(
                              product: widget.productsList[index],
                            ),
                          ),
                        ),
                      ),
                      child: Image.network(
                        widget.productsList[index].image!,
                        height: size.height * 0.12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.productsList[index].title!,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.black87),
                  softWrap: true,
                  maxLines: 2,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$${widget.productsList[index].price}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        final data = {
                          "userId": 2,
                          "date": formatter.format(DateTime.now()),
                          "products": [
                            {
                              "productId": widget.productsList[index].id,
                              "quantity": 1,
                            }
                          ]
                        };
                        context.read<ProductCubit>().addToCart(data);
                      },
                      icon: Image.asset(
                        'assets/icons/add_to_cart.png',
                        width: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
