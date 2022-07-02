part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.loading() = ProductListLoading;
  const factory ProductState.loaded({required List<Product> productsList}) =
      ProductListLoaded;
}
