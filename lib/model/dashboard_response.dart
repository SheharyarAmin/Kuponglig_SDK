//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DashboardResponse {
  /// Returns a new [DashboardResponse] instance.
  DashboardResponse({
    required this.mainStats,
    this.activityPatterns = const {},
    required this.performanceDetails,
    required this.hourlyActivity,
    this.topCoupons = const [],
  });

  CoreStats mainStats;

  Map<String, ActivityMetrics> activityPatterns;

  PerformanceDetails? performanceDetails;

  HourlyActivityData hourlyActivity;

  List<CouponPerformance> topCoupons;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DashboardResponse &&
    other.mainStats == mainStats &&
    _deepEquality.equals(other.activityPatterns, activityPatterns) &&
    other.performanceDetails == performanceDetails &&
    other.hourlyActivity == hourlyActivity &&
    _deepEquality.equals(other.topCoupons, topCoupons);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mainStats.hashCode) +
    (activityPatterns.hashCode) +
    (performanceDetails == null ? 0 : performanceDetails!.hashCode) +
    (hourlyActivity.hashCode) +
    (topCoupons.hashCode);

  @override
  String toString() => 'DashboardResponse[mainStats=$mainStats, activityPatterns=$activityPatterns, performanceDetails=$performanceDetails, hourlyActivity=$hourlyActivity, topCoupons=$topCoupons]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'main_stats'] = this.mainStats;
      json[r'activity_patterns'] = this.activityPatterns;
    if (this.performanceDetails != null) {
      json[r'performance_details'] = this.performanceDetails;
    } else {
      json[r'performance_details'] = null;
    }
      json[r'hourly_activity'] = this.hourlyActivity;
      json[r'top_coupons'] = this.topCoupons;
    return json;
  }

  /// Returns a new [DashboardResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DashboardResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DashboardResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DashboardResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DashboardResponse(
        mainStats: CoreStats.fromJson(json[r'main_stats'])!,
        activityPatterns: ActivityMetrics.mapFromJson(json[r'activity_patterns']),
        performanceDetails: PerformanceDetails.fromJson(json[r'performance_details']),
        hourlyActivity: HourlyActivityData.fromJson(json[r'hourly_activity'])!,
        topCoupons: CouponPerformance.listFromJson(json[r'top_coupons']),
      );
    }
    return null;
  }

  static List<DashboardResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DashboardResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DashboardResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DashboardResponse> mapFromJson(dynamic json) {
    final map = <String, DashboardResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DashboardResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DashboardResponse-objects as value to a dart map
  static Map<String, List<DashboardResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DashboardResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DashboardResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'main_stats',
    'activity_patterns',
    'performance_details',
    'hourly_activity',
    'top_coupons',
  };
}

