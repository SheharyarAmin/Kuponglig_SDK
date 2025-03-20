//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PerformanceDetails {
  /// Returns a new [PerformanceDetails] instance.
  PerformanceDetails({
    required this.totalRevenue,
    required this.totalActiveCoupons,
    required this.totalSavedCoupons,
    required this.conversionRate,
  });

  /// Total savings in currency
  ///
  /// Minimum value: 0
  num totalRevenue;

  /// Minimum value: 0
  int totalActiveCoupons;

  /// Minimum value: 0
  int totalSavedCoupons;

  /// With 1 decimal place
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  num conversionRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PerformanceDetails &&
    other.totalRevenue == totalRevenue &&
    other.totalActiveCoupons == totalActiveCoupons &&
    other.totalSavedCoupons == totalSavedCoupons &&
    other.conversionRate == conversionRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalRevenue.hashCode) +
    (totalActiveCoupons.hashCode) +
    (totalSavedCoupons.hashCode) +
    (conversionRate.hashCode);

  @override
  String toString() => 'PerformanceDetails[totalRevenue=$totalRevenue, totalActiveCoupons=$totalActiveCoupons, totalSavedCoupons=$totalSavedCoupons, conversionRate=$conversionRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total_revenue'] = this.totalRevenue;
      json[r'total_active_coupons'] = this.totalActiveCoupons;
      json[r'total_saved_coupons'] = this.totalSavedCoupons;
      json[r'conversion_rate'] = this.conversionRate;
    return json;
  }

  /// Returns a new [PerformanceDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PerformanceDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PerformanceDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PerformanceDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PerformanceDetails(
        totalRevenue: num.parse('${json[r'total_revenue']}'),
        totalActiveCoupons: mapValueOfType<int>(json, r'total_active_coupons')!,
        totalSavedCoupons: mapValueOfType<int>(json, r'total_saved_coupons')!,
        conversionRate: num.parse('${json[r'conversion_rate']}'),
      );
    }
    return null;
  }

  static List<PerformanceDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PerformanceDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PerformanceDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PerformanceDetails> mapFromJson(dynamic json) {
    final map = <String, PerformanceDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PerformanceDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PerformanceDetails-objects as value to a dart map
  static Map<String, List<PerformanceDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PerformanceDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PerformanceDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total_revenue',
    'total_active_coupons',
    'total_saved_coupons',
    'conversion_rate',
  };
}

