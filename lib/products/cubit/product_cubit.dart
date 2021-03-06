import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:future_store/products/model/product.dart';
import 'package:future_store/products/product_data_repository.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit({required this.productRepository})
      : super(const ProductState.loading());

  final ProductRepository productRepository;

  Future<void> fetchProducts() async {
    emit(const ProductListLoading());

    final productsList = await productRepository.fetchProducts();
    emit(ProductState.loaded(productsList: productsList));
  }

  Future<void> addToCart(Map<String, dynamic> data) async {
    emit(const ProductListLoading());

    await productRepository.addToCart(data);

    final productsList = await productRepository.fetchProducts();
    emit(ProductState.loaded(productsList: productsList));
  }
}
