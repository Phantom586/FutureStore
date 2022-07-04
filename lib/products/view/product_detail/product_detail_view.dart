import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_store/cart/cart_repository.dart';
import 'package:future_store/cart/cubit/cart_cubit.dart';
import 'package:future_store/cart/views/cart.dart';
import 'package:future_store/products/cubit/product_details_cubit.dart';
import 'package:future_store/products/model/product.dart';
import 'package:future_store/shared/theme.dart';
import 'package:intl/intl.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: widget.product.id!,
                    child: Image.network(
                      widget.product.image!,
                      width: size.width * 0.6,
                      height: size.height * 0.35,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                Text(
                  widget.product.title!,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.product.price!}',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: matteBlue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        toBeginningOfSentenceCase(widget.product.category!)!,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.product.description!,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 16.0, left: 16.0),
              child: Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(16),
            width: size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) =>
                              CartCubit(cartRepository: const CartRepository()),
                          child: const Cart(),
                        ),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                  ),
                  icon: const Icon(Icons.shopping_cart),
                  label: Text(
                    'Cart',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    final data = {
                      "userId": 2,
                      "date": formatter.format(DateTime.now()),
                      "products": [
                        {"productId": widget.product.id, "quantity": 1}
                      ]
                    };
                    context
                        .read<ProductDetailsCubit>()
                        .addToCart(data, widget.product.id!);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: secondaryColor,
                  ),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Add to Cart',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
