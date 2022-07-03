import 'package:future_store/products/model/product.dart';
import 'package:future_store/products/product_data_provider.dart';

class ProductRepository {
  const ProductRepository();

  Future<List<Product>> fetchProducts() async {
    final jsonProductList = await ProductApi.fetchProducts();

    List<Product> products = [];
    for (var product in jsonProductList) {
      products.add(Product.fromJson(product));
    }

    return products;
  }

  Future<Product> fetchProductDetails(int id) async {
    final jsonProduct = await ProductApi.fetchProductDetails(id);

    Product product = Product.fromJson(jsonProduct);
    return product;
  }

  Future<bool> addToCart(Map<String, dynamic> data) async {
    final response = await ProductApi.addToCart(data);

    final int id = response["id"];
    return id.isNaN ? false : true;
  }
}
