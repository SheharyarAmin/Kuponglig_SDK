//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserRedeemedCouponResponse {
  /// Returns a new [UserRedeemedCouponResponse] instance.
  UserRedeemedCouponResponse({
    required this.id,
    required this.redeemedAt,
    required this.coupon,
    required this.store,
  });

  String id;

  DateTime redeemedAt;

  CouponDetails coupon;

  StoreDetails store;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserRedeemedCouponResponse &&
    other.id == id &&
    other.redeemedAt == redeemedAt &&
    other.coupon == coupon &&
    other.store == store;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (redeemedAt.hashCode) +
    (coupon.hashCode) +
    (store.hashCode);

  @override
  String toString() => 'UserRedeemedCouponResponse[id=$id, redeemedAt=$redeemedAt, coupon=$coupon, store=$store]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'redeemed_at'] = this.redeemedAt.toUtc().toIso8601String();
      json[r'coupon'] = this.coupon;
      json[r'store'] = this.store;
    return json;
  }

  /// Returns a new [UserRedeemedCouponResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserRedeemedCouponResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserRedeemedCouponResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserRedeemedCouponResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserRedeemedCouponResponse(
        id: mapValueOfType<String>(json, r'id')!,
        redeemedAt: mapDateTime(json, r'redeemed_at', r'')!,
        coupon: CouponDetails.fromJson(json[r'coupon'])!,
        store: StoreDetails.fromJson(json[r'store'])!,
      );
    }
    return null;
  }

  static List<UserRedeemedCouponResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserRedeemedCouponResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserRedeemedCouponResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserRedeemedCouponResponse> mapFromJson(dynamic json) {
    final map = <String, UserRedeemedCouponResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserRedeemedCouponResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserRedeemedCouponResponse-objects as value to a dart map
  static Map<String, List<UserRedeemedCouponResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserRedeemedCouponResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserRedeemedCouponResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'redeemed_at',
    'coupon',
    'store',
  };
}

