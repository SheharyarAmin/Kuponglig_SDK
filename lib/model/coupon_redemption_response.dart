//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CouponRedemptionResponse {
  /// Returns a new [CouponRedemptionResponse] instance.
  CouponRedemptionResponse({
    required this.message,
    required this.redeemed,
    required this.status,
  });

  String message;

  bool redeemed;

  CouponRedemptionStatus status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CouponRedemptionResponse &&
    other.message == message &&
    other.redeemed == redeemed &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (redeemed.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'CouponRedemptionResponse[message=$message, redeemed=$redeemed, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
      json[r'redeemed'] = this.redeemed;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [CouponRedemptionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CouponRedemptionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CouponRedemptionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CouponRedemptionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CouponRedemptionResponse(
        message: mapValueOfType<String>(json, r'message')!,
        redeemed: mapValueOfType<bool>(json, r'redeemed')!,
        status: CouponRedemptionStatus.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<CouponRedemptionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponRedemptionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponRedemptionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CouponRedemptionResponse> mapFromJson(dynamic json) {
    final map = <String, CouponRedemptionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CouponRedemptionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CouponRedemptionResponse-objects as value to a dart map
  static Map<String, List<CouponRedemptionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CouponRedemptionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CouponRedemptionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
    'redeemed',
    'status',
  };
}

