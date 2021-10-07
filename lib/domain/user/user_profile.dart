import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile(UserData data) = UserProfileObj;

  const factory UserProfile.data(
      String name,
      String phoneNumber,
      String bloodGroup,
      String address,
      String postCode,
      String gender,
      String state,
      String city,
      UserLocation location) = UserData;
  const factory UserProfile.location(double latitude, double longitude) =
      UserLocation;
  // factory UserProfile.empty() =>
  //     const UserProfileObj(UserData('', '', "", '', "", "", "", "", {}));
  const factory UserProfile.list({@required List<UserProfileObj>? users}) =
      UserList;
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
