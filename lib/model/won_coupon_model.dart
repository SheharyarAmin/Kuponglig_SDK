//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WonCouponModel {
  /// Returns a new [WonCouponModel] instance.
  WonCouponModel({
    required this.id,
    required this.userId,
    required this.couponId,
    required this.couponName,
    required this.validTill,
    required this.wonAt,
    this.status = WonCouponStatus.active,
  });

  String id;

  String userId;

  String couponId;

  String couponName;

  DateTime validTill;

  DateTime wonAt;

  WonCouponStatus status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WonCouponModel &&
    other.id == id &&
    other.userId == userId &&
    other.couponId == couponId &&
    other.couponName == couponName &&
    other.validTill == validTill &&
    other.wonAt == wonAt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (couponId.hashCode) +
    (couponName.hashCode) +
    (validTill.hashCode) +
    (wonAt.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'WonCouponModel[id=$id, userId=$userId, couponId=$couponId, couponName=$couponName, validTill=$validTill, wonAt=$wonAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'user_id'] = this.userId;
      json[r'coupon_id'] = this.couponId;
      json[r'coupon_name'] = this.couponName;
      json[r'valid_till'] = this.validTill.toUtc().toIso8601String();
      json[r'won_at'] = this.wonAt.toUtc().toIso8601String();
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [WonCouponModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WonCouponModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WonCouponModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WonCouponModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WonCouponModel(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        couponId: mapValueOfType<String>(json, r'coupon_id')!,
        couponName: mapValueOfType<String>(json, r'coupon_name')!,
        validTill: mapDateTime(json, r'valid_till', r'')!,
        wonAt: mapDateTime(json, r'won_at', r'')!,
        status: WonCouponStatus.fromJson(json[r'status']) ?? WonCouponStatus.active,
      );
    }
    return null;
  }

  static List<WonCouponModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WonCouponModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WonCouponModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WonCouponModel> mapFromJson(dynamic json) {
    final map = <String, WonCouponModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WonCouponModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WonCouponModel-objects as value to a dart map
  static Map<String, List<WonCouponModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WonCouponModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WonCouponModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'user_id',
    'coupon_id',
    'coupon_name',
    'valid_till',
    'won_at',
  };
}

