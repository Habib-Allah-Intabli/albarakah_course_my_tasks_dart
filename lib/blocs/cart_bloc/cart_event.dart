// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc.dart';


sealed class CartEvent {}

class InitiliazeCart extends CartEvent {}

class AddToCart extends CartEvent {
  final CartItemModel cartItemModel;

  AddToCart({required this.cartItemModel});
}

class RemoveFromCart extends CartEvent {
  final CartItemModel cartItemModel;
  RemoveFromCart({required this.cartItemModel});
}
