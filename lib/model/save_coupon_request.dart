//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SaveCouponRequest {
  /// Returns a new [SaveCouponRequest] instance.
  SaveCouponRequest({
    required this.userId,
    required this.couponId,
  });

  String userId;

  String couponId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaveCouponRequest &&
    other.userId == userId &&
    other.couponId == couponId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (couponId.hashCode);

  @override
  String toString() => 'SaveCouponRequest[userId=$userId, couponId=$couponId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'coupon_id'] = this.couponId;
    return json;
  }

  /// Returns a new [SaveCouponRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaveCouponRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaveCouponRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaveCouponRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaveCouponRequest(
        userId: mapValueOfType<String>(json, r'user_id')!,
        couponId: mapValueOfType<String>(json, r'coupon_id')!,
      );
    }
    return null;
  }

  static List<SaveCouponRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaveCouponRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaveCouponRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaveCouponRequest> mapFromJson(dynamic json) {
    final map = <String, SaveCouponRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaveCouponRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaveCouponRequest-objects as value to a dart map
  static Map<String, List<SaveCouponRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaveCouponRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaveCouponRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'coupon_id',
  };
}

