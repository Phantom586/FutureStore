import 'package:future_store/home/home_data_provider.dart';
import 'package:future_store/products/model/product.dart';

class ProductRepository {
  const ProductRepository();

  Future<List<Product>> fetchProducts() async {
    final data = await StoreApi.fetchProducts();

    print('Data: $data');
    final products = <Product>[];
    return products;
  }
}
