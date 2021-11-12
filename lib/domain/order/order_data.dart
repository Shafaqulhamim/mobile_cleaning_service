import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_cleaning_service/domain/user/user_profile.dart';

part 'order_data.freezed.dart';
part 'order_data.g.dart';

@freezed
abstract class OrderProfile with _$OrderProfile {
  //const factory UserProfile(UserData data) = UserProfileObj;

  const factory OrderProfile.data(UserData userInfo, String orderedBy,
      String address, String paymentMethod, String seller) = OrderData;

  // factory UserProfile.empty() =>
  //     const UserProfileObj(UserData('', '', "", '', "", "", "", "", {}));
  const factory OrderProfile.list(List<OrderData> products) = OrderList;
  factory OrderProfile.fromJson(Map<String, dynamic> json) =>
      _$OrderProfileFromJson(json);
}
