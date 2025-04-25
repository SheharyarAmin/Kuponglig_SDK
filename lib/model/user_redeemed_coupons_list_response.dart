//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserRedeemedCouponsListResponse {
  /// Returns a new [UserRedeemedCouponsListResponse] instance.
  UserRedeemedCouponsListResponse({
    this.coupons = const [],
    required this.totalCount,
  });

  List<UserRedeemedCouponResponse> coupons;

  int totalCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserRedeemedCouponsListResponse &&
    _deepEquality.equals(other.coupons, coupons) &&
    other.totalCount == totalCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (coupons.hashCode) +
    (totalCount.hashCode);

  @override
  String toString() => 'UserRedeemedCouponsListResponse[coupons=$coupons, totalCount=$totalCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'coupons'] = this.coupons;
      json[r'total_count'] = this.totalCount;
    return json;
  }

  /// Returns a new [UserRedeemedCouponsListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserRedeemedCouponsListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserRedeemedCouponsListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserRedeemedCouponsListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserRedeemedCouponsListResponse(
        coupons: UserRedeemedCouponResponse.listFromJson(json[r'coupons']),
        totalCount: mapValueOfType<int>(json, r'total_count')!,
      );
    }
    return null;
  }

  static List<UserRedeemedCouponsListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserRedeemedCouponsListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserRedeemedCouponsListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserRedeemedCouponsListResponse> mapFromJson(dynamic json) {
    final map = <String, UserRedeemedCouponsListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserRedeemedCouponsListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserRedeemedCouponsListResponse-objects as value to a dart map
  static Map<String, List<UserRedeemedCouponsListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserRedeemedCouponsListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserRedeemedCouponsListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'coupons',
    'total_count',
  };
}

