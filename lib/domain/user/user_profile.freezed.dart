// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'default':
      return UserProfileObj.fromJson(json);
    case 'data':
      return UserData.fromJson(json);
    case 'location':
      return UserLocation.fromJson(json);
    case 'list':
      return UserList.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserProfile',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

  UserProfileObj call(UserData data) {
    return UserProfileObj(
      data,
    );
  }

  UserData data(
      String name,
      String phoneNumber,
      String bloodGroup,
      String address,
      String postCode,
      String gender,
      String state,
      String city,
      UserLocation location) {
    return UserData(
      name,
      phoneNumber,
      bloodGroup,
      address,
      postCode,
      gender,
      state,
      city,
      location,
    );
  }

  UserLocation location(double latitude, double longitude) {
    return UserLocation(
      latitude,
      longitude,
    );
  }

  UserList list({List<UserProfileObj>? users}) {
    return UserList(
      users: users,
    );
  }

  UserProfile fromJson(Map<String, Object> json) {
    return UserProfile.fromJson(json);
  }
}

/// @nodoc
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)
        data,
    required TResult Function(double latitude, double longitude) location,
    required TResult Function(List<UserProfileObj>? users) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserLocation value) location,
    required TResult Function(UserList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;
}

/// @nodoc
abstract class $UserProfileObjCopyWith<$Res> {
  factory $UserProfileObjCopyWith(
          UserProfileObj value, $Res Function(UserProfileObj) then) =
      _$UserProfileObjCopyWithImpl<$Res>;
  $Res call({UserData data});
}

/// @nodoc
class _$UserProfileObjCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileObjCopyWith<$Res> {
  _$UserProfileObjCopyWithImpl(
      UserProfileObj _value, $Res Function(UserProfileObj) _then)
      : super(_value, (v) => _then(v as UserProfileObj));

  @override
  UserProfileObj get _value => super._value as UserProfileObj;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(UserProfileObj(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileObj implements UserProfileObj {
  const _$UserProfileObj(this.data);

  factory _$UserProfileObj.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileObjFromJson(json);

  @override
  final UserData data;

  @override
  String toString() {
    return 'UserProfile(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfileObj &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UserProfileObjCopyWith<UserProfileObj> get copyWith =>
      _$UserProfileObjCopyWithImpl<UserProfileObj>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)
        data,
    required TResult Function(double latitude, double longitude) location,
    required TResult Function(List<UserProfileObj>? users) list,
  }) {
    return $default(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
  }) {
    return $default?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserLocation value) location,
    required TResult Function(UserList value) list,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileObjToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class UserProfileObj implements UserProfile {
  const factory UserProfileObj(UserData data) = _$UserProfileObj;

  factory UserProfileObj.fromJson(Map<String, dynamic> json) =
      _$UserProfileObj.fromJson;

  UserData get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileObjCopyWith<UserProfileObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String phoneNumber,
      String bloodGroup,
      String address,
      String postCode,
      String gender,
      String state,
      String city,
      UserLocation location});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(UserData _value, $Res Function(UserData) _then)
      : super(_value, (v) => _then(v as UserData));

  @override
  UserData get _value => super._value as UserData;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? bloodGroup = freezed,
    Object? address = freezed,
    Object? postCode = freezed,
    Object? gender = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? location = freezed,
  }) {
    return _then(UserData(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserData implements UserData {
  const _$UserData(this.name, this.phoneNumber, this.bloodGroup, this.address,
      this.postCode, this.gender, this.state, this.city, this.location);

  factory _$UserData.fromJson(Map<String, dynamic> json) =>
      _$$UserDataFromJson(json);

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String bloodGroup;
  @override
  final String address;
  @override
  final String postCode;
  @override
  final String gender;
  @override
  final String state;
  @override
  final String city;
  @override
  final UserLocation location;

  @override
  String toString() {
    return 'UserProfile.data(name: $name, phoneNumber: $phoneNumber, bloodGroup: $bloodGroup, address: $address, postCode: $postCode, gender: $gender, state: $state, city: $city, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.bloodGroup, bloodGroup) ||
                const DeepCollectionEquality()
                    .equals(other.bloodGroup, bloodGroup)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.postCode, postCode) ||
                const DeepCollectionEquality()
                    .equals(other.postCode, postCode)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(bloodGroup) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(postCode) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $UserDataCopyWith<UserData> get copyWith =>
      _$UserDataCopyWithImpl<UserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)
        data,
    required TResult Function(double latitude, double longitude) location,
    required TResult Function(List<UserProfileObj>? users) list,
  }) {
    return data(name, phoneNumber, bloodGroup, address, postCode, gender, state,
        city, this.location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
  }) {
    return data?.call(name, phoneNumber, bloodGroup, address, postCode, gender,
        state, city, this.location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(name, phoneNumber, bloodGroup, address, postCode, gender,
          state, city, this.location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserLocation value) location,
    required TResult Function(UserList value) list,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class UserData implements UserProfile {
  const factory UserData(
      String name,
      String phoneNumber,
      String bloodGroup,
      String address,
      String postCode,
      String gender,
      String state,
      String city,
      UserLocation location) = _$UserData;

  factory UserData.fromJson(Map<String, dynamic> json) = _$UserData.fromJson;

  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get bloodGroup => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get postCode => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  UserLocation get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationCopyWith<$Res> {
  factory $UserLocationCopyWith(
          UserLocation value, $Res Function(UserLocation) then) =
      _$UserLocationCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$UserLocationCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $UserLocationCopyWith<$Res> {
  _$UserLocationCopyWithImpl(
      UserLocation _value, $Res Function(UserLocation) _then)
      : super(_value, (v) => _then(v as UserLocation));

  @override
  UserLocation get _value => super._value as UserLocation;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(UserLocation(
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLocation implements UserLocation {
  const _$UserLocation(this.latitude, this.longitude);

  factory _$UserLocation.fromJson(Map<String, dynamic> json) =>
      _$$UserLocationFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'UserProfile.location(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLocation &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  $UserLocationCopyWith<UserLocation> get copyWith =>
      _$UserLocationCopyWithImpl<UserLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)
        data,
    required TResult Function(double latitude, double longitude) location,
    required TResult Function(List<UserProfileObj>? users) list,
  }) {
    return location(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
  }) {
    return location?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserLocation value) location,
    required TResult Function(UserList value) list,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLocationToJson(this)..['runtimeType'] = 'location';
  }
}

abstract class UserLocation implements UserProfile {
  const factory UserLocation(double latitude, double longitude) =
      _$UserLocation;

  factory UserLocation.fromJson(Map<String, dynamic> json) =
      _$UserLocation.fromJson;

  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationCopyWith<UserLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListCopyWith<$Res> {
  factory $UserListCopyWith(UserList value, $Res Function(UserList) then) =
      _$UserListCopyWithImpl<$Res>;
  $Res call({List<UserProfileObj>? users});
}

/// @nodoc
class _$UserListCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $UserListCopyWith<$Res> {
  _$UserListCopyWithImpl(UserList _value, $Res Function(UserList) _then)
      : super(_value, (v) => _then(v as UserList));

  @override
  UserList get _value => super._value as UserList;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(UserList(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserProfileObj>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserList implements UserList {
  const _$UserList({this.users});

  factory _$UserList.fromJson(Map<String, dynamic> json) =>
      _$$UserListFromJson(json);

  @override
  final List<UserProfileObj>? users;

  @override
  String toString() {
    return 'UserProfile.list(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserList &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  $UserListCopyWith<UserList> get copyWith =>
      _$UserListCopyWithImpl<UserList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)
        data,
    required TResult Function(double latitude, double longitude) location,
    required TResult Function(List<UserProfileObj>? users) list,
  }) {
    return list(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
  }) {
    return list?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String name,
            String phoneNumber,
            String bloodGroup,
            String address,
            String postCode,
            String gender,
            String state,
            String city,
            UserLocation location)?
        data,
    TResult Function(double latitude, double longitude)? location,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserLocation value) location,
    required TResult Function(UserList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserLocation value)? location,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListToJson(this)..['runtimeType'] = 'list';
  }
}

abstract class UserList implements UserProfile {
  const factory UserList({List<UserProfileObj>? users}) = _$UserList;

  factory UserList.fromJson(Map<String, dynamic> json) = _$UserList.fromJson;

  List<UserProfileObj>? get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListCopyWith<UserList> get copyWith =>
      throw _privateConstructorUsedError;
}
