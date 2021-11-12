part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.postOrderData(OrderData orderData) = PostOrderData;

  const factory ProductEvent.sellerOrderList(String phoneNumber) =
      GetOrderDataList;
}
