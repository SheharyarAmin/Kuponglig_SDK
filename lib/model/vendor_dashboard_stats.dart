//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VendorDashboardStats {
  /// Returns a new [VendorDashboardStats] instance.
  VendorDashboardStats({
    required this.dailyStats,
    required this.periodStats,
  });

  DailyStats dailyStats;

  PeriodStats periodStats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VendorDashboardStats &&
    other.dailyStats == dailyStats &&
    other.periodStats == periodStats;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dailyStats.hashCode) +
    (periodStats.hashCode);

  @override
  String toString() => 'VendorDashboardStats[dailyStats=$dailyStats, periodStats=$periodStats]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'daily_stats'] = this.dailyStats;
      json[r'period_stats'] = this.periodStats;
    return json;
  }

  /// Returns a new [VendorDashboardStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VendorDashboardStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VendorDashboardStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VendorDashboardStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VendorDashboardStats(
        dailyStats: DailyStats.fromJson(json[r'daily_stats'])!,
        periodStats: PeriodStats.fromJson(json[r'period_stats'])!,
      );
    }
    return null;
  }

  static List<VendorDashboardStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VendorDashboardStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorDashboardStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VendorDashboardStats> mapFromJson(dynamic json) {
    final map = <String, VendorDashboardStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VendorDashboardStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VendorDashboardStats-objects as value to a dart map
  static Map<String, List<VendorDashboardStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VendorDashboardStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VendorDashboardStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'daily_stats',
    'period_stats',
  };
}

