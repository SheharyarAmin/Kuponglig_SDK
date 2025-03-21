//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnlockedCouponModel {
  /// Returns a new [UnlockedCouponModel] instance.
  UnlockedCouponModel({
    required this.id,
    required this.userId,
    required this.couponId,
    required this.pointsSpent,
    required this.unlockedAt,
  });

  String id;

  String userId;

  String couponId;

  int pointsSpent;

  DateTime unlockedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnlockedCouponModel &&
    other.id == id &&
    other.userId == userId &&
    other.couponId == couponId &&
    other.pointsSpent == pointsSpent &&
    other.unlockedAt == unlockedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (couponId.hashCode) +
    (pointsSpent.hashCode) +
    (unlockedAt.hashCode);

  @override
  String toString() => 'UnlockedCouponModel[id=$id, userId=$userId, couponId=$couponId, pointsSpent=$pointsSpent, unlockedAt=$unlockedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'user_id'] = this.userId;
      json[r'coupon_id'] = this.couponId;
      json[r'points_spent'] = this.pointsSpent;
      json[r'unlocked_at'] = this.unlockedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UnlockedCouponModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnlockedCouponModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UnlockedCouponModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UnlockedCouponModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UnlockedCouponModel(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        couponId: mapValueOfType<String>(json, r'coupon_id')!,
        pointsSpent: mapValueOfType<int>(json, r'points_spent')!,
        unlockedAt: mapDateTime(json, r'unlocked_at', r'')!,
      );
    }
    return null;
  }

  static List<UnlockedCouponModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnlockedCouponModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnlockedCouponModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnlockedCouponModel> mapFromJson(dynamic json) {
    final map = <String, UnlockedCouponModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnlockedCouponModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnlockedCouponModel-objects as value to a dart map
  static Map<String, List<UnlockedCouponModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnlockedCouponModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UnlockedCouponModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'user_id',
    'coupon_id',
    'points_spent',
    'unlocked_at',
  };
}

