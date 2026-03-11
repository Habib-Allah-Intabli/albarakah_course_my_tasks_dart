
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_22_full_design/core/constants/api_constants.dart';


import 'package:task_22_full_design/core/service/product_service.dart';
import 'package:task_22_full_design/models/product_model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductService productService;
  ProductBloc({ required this.productService}) : super(ProductState()) {
    on<GetAllProducts>((event, emit) async {
      if (!state.hasReachedMax) {
        emit(state.copyWith(productStatus: ProductStatus.loading,errorMessage: null));
        List<ProductModel>? result = await productService.getAllProducts(
          skip: state.products.length,
        );
        if (result != null) {
          emit(
            state.copyWith(
              // ! we use spread oprator to merge two list one list 
              // ! example [...[10,20,30], ...[50,60]] = [10,20,30,50,60]
              products: [... state.products, ... result],
              productStatus: ProductStatus.success,
              hasReachedMax: result.length < ApiConstants.limit,
              errorMessage: null
            ),
          );
        } else {
          emit(
            state.copyWith(
              productStatus: ProductStatus.failure,
              errorMessage: "failed to load data",
            ),
          );
        }
      }
    });
  }
}
