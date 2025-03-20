//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HourlyActivityData {
  /// Returns a new [HourlyActivityData] instance.
  HourlyActivityData({
    this.hourlyData = const {},
    required this.maxValue,
    this.topHours = const [],
  });

  /// Map of hour to visit count
  Map<String, int> hourlyData;

  /// Maximum visits for heatmap scaling
  ///
  /// Minimum value: 0
  int maxValue;

  /// Top 3 peak hours sorted by visit count
  List<HourlyMetric> topHours;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HourlyActivityData &&
    _deepEquality.equals(other.hourlyData, hourlyData) &&
    other.maxValue == maxValue &&
    _deepEquality.equals(other.topHours, topHours);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hourlyData.hashCode) +
    (maxValue.hashCode) +
    (topHours.hashCode);

  @override
  String toString() => 'HourlyActivityData[hourlyData=$hourlyData, maxValue=$maxValue, topHours=$topHours]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hourly_data'] = this.hourlyData;
      json[r'max_value'] = this.maxValue;
      json[r'top_hours'] = this.topHours;
    return json;
  }

  /// Returns a new [HourlyActivityData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HourlyActivityData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HourlyActivityData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HourlyActivityData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HourlyActivityData(
        hourlyData: mapCastOfType<String, int>(json, r'hourly_data')!,
        maxValue: mapValueOfType<int>(json, r'max_value')!,
        topHours: HourlyMetric.listFromJson(json[r'top_hours']),
      );
    }
    return null;
  }

  static List<HourlyActivityData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HourlyActivityData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HourlyActivityData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HourlyActivityData> mapFromJson(dynamic json) {
    final map = <String, HourlyActivityData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HourlyActivityData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HourlyActivityData-objects as value to a dart map
  static Map<String, List<HourlyActivityData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HourlyActivityData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HourlyActivityData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hourly_data',
    'max_value',
    'top_hours',
  };
}

