import 'package:future_store/cart/cart_data_provider.dart';
import 'package:future_store/cart/model/cart_model.dart';
import 'package:future_store/products/model/product.dart';
import 'package:future_store/products/product_data_provider.dart';

class CartRepository {
  const CartRepository();

  Future<List<Product>> fetchProducts() async {
    final jsonCartItemList = await CartApi.fetchCartItems();

    List<CartModel> cartItemsList = [];
    List<Product> productsList = [];
    for (var cartItem in jsonCartItemList) {
      cartItemsList.add(CartModel.fromJson(cartItem));
    }

    for (var prod in cartItemsList[0].products!) {
      final jsonProduct = await ProductApi.fetchProductDetails(prod.productId!);
      final Product product = Product.fromJson(jsonProduct);
      productsList.add(product);
    }

    return productsList;
  }
}
