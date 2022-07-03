import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:future_store/cart/cart_repository.dart';
import 'package:future_store/products/model/product.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit({required this.cartRepository}) : super(const CartState.initial());

  final CartRepository cartRepository;

  Future<void> fetchCartItems() async {
    emit(const CartLoading());

    final List<Product> productsList = await cartRepository.fetchProducts();
    emit(CartLoaded(productList: productsList));
  }
}
