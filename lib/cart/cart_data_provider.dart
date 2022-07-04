import 'dart:convert';
import 'package:http/http.dart' as http;

class CartApi {
  static const url = 'https://fakestoreapi.com';

  static Future<dynamic> fetchCartItems() async {
    final response = await http.get(Uri.parse('$url/carts/user/1'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    }
  }
}
