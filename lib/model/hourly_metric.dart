//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HourlyMetric {
  /// Returns a new [HourlyMetric] instance.
  HourlyMetric({
    required this.hour,
    required this.visits,
    required this.couponViews,
    required this.storeViews,
    required this.saves,
  });

  /// 24-hour format
  String hour;

  /// Minimum value: 0
  int visits;

  /// Minimum value: 0
  int couponViews;

  /// Minimum value: 0
  int storeViews;

  /// Minimum value: 0
  int saves;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HourlyMetric &&
    other.hour == hour &&
    other.visits == visits &&
    other.couponViews == couponViews &&
    other.storeViews == storeViews &&
    other.saves == saves;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hour.hashCode) +
    (visits.hashCode) +
    (couponViews.hashCode) +
    (storeViews.hashCode) +
    (saves.hashCode);

  @override
  String toString() => 'HourlyMetric[hour=$hour, visits=$visits, couponViews=$couponViews, storeViews=$storeViews, saves=$saves]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hour'] = this.hour;
      json[r'visits'] = this.visits;
      json[r'coupon_views'] = this.couponViews;
      json[r'store_views'] = this.storeViews;
      json[r'saves'] = this.saves;
    return json;
  }

  /// Returns a new [HourlyMetric] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HourlyMetric? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HourlyMetric[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HourlyMetric[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HourlyMetric(
        hour: mapValueOfType<String>(json, r'hour')!,
        visits: mapValueOfType<int>(json, r'visits')!,
        couponViews: mapValueOfType<int>(json, r'coupon_views')!,
        storeViews: mapValueOfType<int>(json, r'store_views')!,
        saves: mapValueOfType<int>(json, r'saves')!,
      );
    }
    return null;
  }

  static List<HourlyMetric> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HourlyMetric>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HourlyMetric.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HourlyMetric> mapFromJson(dynamic json) {
    final map = <String, HourlyMetric>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HourlyMetric.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HourlyMetric-objects as value to a dart map
  static Map<String, List<HourlyMetric>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HourlyMetric>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HourlyMetric.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hour',
    'visits',
    'coupon_views',
    'store_views',
    'saves',
  };
}

