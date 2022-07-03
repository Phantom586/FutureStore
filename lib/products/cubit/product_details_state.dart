part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = ProductDetailsInitial;
  const factory ProductDetailsState.loading() = ProductDetailsLoading;
  const factory ProductDetailsState.loaded({required Product product}) =
      ProductDetailsLoaded;
}
