//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HourlyMetricData {
  /// Returns a new [HourlyMetricData] instance.
  HourlyMetricData({
    required this.visits,
    required this.couponViews,
    required this.storeViews,
    required this.saves,
  });

  /// Minimum value: 0
  int visits;

  /// Minimum value: 0
  int couponViews;

  /// Minimum value: 0
  int storeViews;

  /// Minimum value: 0
  int saves;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HourlyMetricData &&
    other.visits == visits &&
    other.couponViews == couponViews &&
    other.storeViews == storeViews &&
    other.saves == saves;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (visits.hashCode) +
    (couponViews.hashCode) +
    (storeViews.hashCode) +
    (saves.hashCode);

  @override
  String toString() => 'HourlyMetricData[visits=$visits, couponViews=$couponViews, storeViews=$storeViews, saves=$saves]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'visits'] = this.visits;
      json[r'coupon_views'] = this.couponViews;
      json[r'store_views'] = this.storeViews;
      json[r'saves'] = this.saves;
    return json;
  }

  /// Returns a new [HourlyMetricData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HourlyMetricData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HourlyMetricData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HourlyMetricData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HourlyMetricData(
        visits: mapValueOfType<int>(json, r'visits')!,
        couponViews: mapValueOfType<int>(json, r'coupon_views')!,
        storeViews: mapValueOfType<int>(json, r'store_views')!,
        saves: mapValueOfType<int>(json, r'saves')!,
      );
    }
    return null;
  }

  static List<HourlyMetricData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HourlyMetricData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HourlyMetricData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HourlyMetricData> mapFromJson(dynamic json) {
    final map = <String, HourlyMetricData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HourlyMetricData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HourlyMetricData-objects as value to a dart map
  static Map<String, List<HourlyMetricData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HourlyMetricData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HourlyMetricData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'visits',
    'coupon_views',
    'store_views',
    'saves',
  };
}

