part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = CartInitial;
  const factory CartState.loading() = CartLoading;
  const factory CartState.loaded({required List<Product> productList}) =
      CartLoaded;
}
