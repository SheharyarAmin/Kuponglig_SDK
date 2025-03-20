//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DailyStats {
  /// Returns a new [DailyStats] instance.
  DailyStats({
    required this.date,
    this.totalSales = 0,
    this.couponsSold = 0,
    this.couponsRedeemed = 0,
    this.revenue = '0.0',
    this.conversionRate = 0,
    this.views = 0,
  });

  DateTime date;

  int totalSales;

  int couponsSold;

  int couponsRedeemed;

  String revenue;

  num conversionRate;

  int views;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DailyStats &&
    other.date == date &&
    other.totalSales == totalSales &&
    other.couponsSold == couponsSold &&
    other.couponsRedeemed == couponsRedeemed &&
    other.revenue == revenue &&
    other.conversionRate == conversionRate &&
    other.views == views;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date.hashCode) +
    (totalSales.hashCode) +
    (couponsSold.hashCode) +
    (couponsRedeemed.hashCode) +
    (revenue.hashCode) +
    (conversionRate.hashCode) +
    (views.hashCode);

  @override
  String toString() => 'DailyStats[date=$date, totalSales=$totalSales, couponsSold=$couponsSold, couponsRedeemed=$couponsRedeemed, revenue=$revenue, conversionRate=$conversionRate, views=$views]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = this.date.toUtc().toIso8601String();
      json[r'total_sales'] = this.totalSales;
      json[r'coupons_sold'] = this.couponsSold;
      json[r'coupons_redeemed'] = this.couponsRedeemed;
      json[r'revenue'] = this.revenue;
      json[r'conversion_rate'] = this.conversionRate;
      json[r'views'] = this.views;
    return json;
  }

  /// Returns a new [DailyStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DailyStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DailyStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DailyStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DailyStats(
        date: mapDateTime(json, r'date', r'')!,
        totalSales: mapValueOfType<int>(json, r'total_sales') ?? 0,
        couponsSold: mapValueOfType<int>(json, r'coupons_sold') ?? 0,
        couponsRedeemed: mapValueOfType<int>(json, r'coupons_redeemed') ?? 0,
        revenue: mapValueOfType<String>(json, r'revenue') ?? '0.0',
        conversionRate: num.parse('${json[r'conversion_rate']}'),
        views: mapValueOfType<int>(json, r'views') ?? 0,
      );
    }
    return null;
  }

  static List<DailyStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DailyStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DailyStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DailyStats> mapFromJson(dynamic json) {
    final map = <String, DailyStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DailyStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DailyStats-objects as value to a dart map
  static Map<String, List<DailyStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DailyStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DailyStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
  };
}

