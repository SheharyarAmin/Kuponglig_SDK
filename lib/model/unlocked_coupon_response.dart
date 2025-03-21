//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnlockedCouponResponse {
  /// Returns a new [UnlockedCouponResponse] instance.
  UnlockedCouponResponse({
    required this.message,
    required this.unlocked,
    required this.status,
    this.unlockedCoupon,
  });

  String message;

  bool unlocked;

  UnlockStatus status;

  UnlockedCouponModel? unlockedCoupon;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnlockedCouponResponse &&
    other.message == message &&
    other.unlocked == unlocked &&
    other.status == status &&
    other.unlockedCoupon == unlockedCoupon;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (unlocked.hashCode) +
    (status.hashCode) +
    (unlockedCoupon == null ? 0 : unlockedCoupon!.hashCode);

  @override
  String toString() => 'UnlockedCouponResponse[message=$message, unlocked=$unlocked, status=$status, unlockedCoupon=$unlockedCoupon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
      json[r'unlocked'] = this.unlocked;
      json[r'status'] = this.status;
    if (this.unlockedCoupon != null) {
      json[r'unlocked_coupon'] = this.unlockedCoupon;
    } else {
      json[r'unlocked_coupon'] = null;
    }
    return json;
  }

  /// Returns a new [UnlockedCouponResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnlockedCouponResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UnlockedCouponResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UnlockedCouponResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UnlockedCouponResponse(
        message: mapValueOfType<String>(json, r'message')!,
        unlocked: mapValueOfType<bool>(json, r'unlocked')!,
        status: UnlockStatus.fromJson(json[r'status'])!,
        unlockedCoupon: UnlockedCouponModel.fromJson(json[r'unlocked_coupon']),
      );
    }
    return null;
  }

  static List<UnlockedCouponResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnlockedCouponResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnlockedCouponResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnlockedCouponResponse> mapFromJson(dynamic json) {
    final map = <String, UnlockedCouponResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnlockedCouponResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnlockedCouponResponse-objects as value to a dart map
  static Map<String, List<UnlockedCouponResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnlockedCouponResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UnlockedCouponResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
    'unlocked',
    'status',
  };
}

