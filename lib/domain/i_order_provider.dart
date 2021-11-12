import 'package:dartz/dartz.dart';
import 'package:mobile_cleaning_service/domain/order/order_data.dart';

import 'core/failure.dart';

abstract class IProductProvider {
  Future<Either<Failure, Unit>> postOrderData(OrderData order);
  Future<Either<Failure, List<OrderData>>> getOrderList(String sellerID);
}
