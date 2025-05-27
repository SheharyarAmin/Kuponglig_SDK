//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CoreStats {
  /// Returns a new [CoreStats] instance.
  CoreStats({
    required this.totalCouponsRedeemed,
    required this.totalSales,
    required this.engagementRate,
    required this.redemptionsChange,
    required this.revenueChange,
  });

  /// Minimum value: 0
  int totalCouponsRedeemed;

  /// Total sales with currency symbol
  ///
  /// Minimum value: 0.0
  num totalSales;

  /// Minimum value: 0.0
  /// Maximum value: 100.0
  num engagementRate;

  /// Percentage change with trend arrow
  num redemptionsChange;

  /// Percentage change with trend arrow
  num revenueChange;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CoreStats &&
    other.totalCouponsRedeemed == totalCouponsRedeemed &&
    other.totalSales == totalSales &&
    other.engagementRate == engagementRate &&
    other.redemptionsChange == redemptionsChange &&
    other.revenueChange == revenueChange;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalCouponsRedeemed.hashCode) +
    (totalSales.hashCode) +
    (engagementRate.hashCode) +
    (redemptionsChange.hashCode) +
    (revenueChange.hashCode);

  @override
  String toString() => 'CoreStats[totalCouponsRedeemed=$totalCouponsRedeemed, totalSales=$totalSales, engagementRate=$engagementRate, redemptionsChange=$redemptionsChange, revenueChange=$revenueChange]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total_coupons_redeemed'] = this.totalCouponsRedeemed;
      json[r'total_sales'] = this.totalSales;
      json[r'engagement_rate'] = this.engagementRate;
      json[r'redemptions_change'] = this.redemptionsChange;
      json[r'revenue_change'] = this.revenueChange;
    return json;
  }

  /// Returns a new [CoreStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CoreStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CoreStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CoreStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CoreStats(
        totalCouponsRedeemed: mapValueOfType<int>(json, r'total_coupons_redeemed')!,
        totalSales: num.parse('${json[r'total_sales']}'),
        engagementRate: num.parse('${json[r'engagement_rate']}'),
        redemptionsChange: num.parse('${json[r'redemptions_change']}'),
        revenueChange: num.parse('${json[r'revenue_change']}'),
      );
    }
    return null;
  }

  static List<CoreStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CoreStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CoreStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CoreStats> mapFromJson(dynamic json) {
    final map = <String, CoreStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CoreStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CoreStats-objects as value to a dart map
  static Map<String, List<CoreStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CoreStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CoreStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total_coupons_redeemed',
    'total_sales',
    'engagement_rate',
    'redemptions_change',
    'revenue_change',
  };
}

