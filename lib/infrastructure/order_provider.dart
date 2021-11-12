import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:mobile_cleaning_service/domain/core/failure.dart';

import 'package:mobile_cleaning_service/domain/i_order_provider.dart';
import 'package:mobile_cleaning_service/domain/order/order_data.dart';

class ProductProvider extends IProductProvider {
  @override
  @override
  Future<Either<Failure, Unit>> postOrderData(OrderData order) async {
    final CollectionReference requests =
        FirebaseFirestore.instance.collection('OrderData');
    try {
      await requests.add(order.toJson()).then((value) {
        Logger().i("updated ");

        return right(unit);
      }).onError((error, stackTrace) {
        Logger().e(error.toString());
        return left(Failure(error.toString()));
      });

      return right(unit);
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<OrderData>>> getOrderList(String sellerId) async {
    final CollectionReference requests =
        FirebaseFirestore.instance.collection('OrderData');
    try {
      final QuerySnapshot<Object?> response =
          await requests.where("seller", isEqualTo: sellerId).get();

      if (response.docs.isNotEmpty) {
        Logger().i(response.docs.first.data().runtimeType);
        final List<OrderData> list = List<OrderData>.from(response.docs.map(
            (e) => OrderData.fromJson(
                Map<String, dynamic>.from(e.data()! as Map))));
        Logger().i(list.length);
        return right(list);
      } else {
        return right([]);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }
}