import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductApi {
  static const url = 'https://fakestoreapi.com';

  static Future<dynamic> fetchProducts() async {
    final response = await http.get(Uri.parse('$url/products'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    }
  }
}
