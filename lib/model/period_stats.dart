//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PeriodStats {
  /// Returns a new [PeriodStats] instance.
  PeriodStats({
    required this.startDate,
    required this.endDate,
    this.salesTrend = const [],
    this.peakHours = const [],
    this.topPerformingCoupons = const [],
    this.returnRate = 0,
    this.averageOrderValue = '0.0',
  });

  DateTime startDate;

  DateTime endDate;

  List<SalesTrend> salesTrend;

  List<PeakHour> peakHours;

  List<CouponPerformance> topPerformingCoupons;

  num returnRate;

  String averageOrderValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeriodStats &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    _deepEquality.equals(other.salesTrend, salesTrend) &&
    _deepEquality.equals(other.peakHours, peakHours) &&
    _deepEquality.equals(other.topPerformingCoupons, topPerformingCoupons) &&
    other.returnRate == returnRate &&
    other.averageOrderValue == averageOrderValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (startDate.hashCode) +
    (endDate.hashCode) +
    (salesTrend.hashCode) +
    (peakHours.hashCode) +
    (topPerformingCoupons.hashCode) +
    (returnRate.hashCode) +
    (averageOrderValue.hashCode);

  @override
  String toString() => 'PeriodStats[startDate=$startDate, endDate=$endDate, salesTrend=$salesTrend, peakHours=$peakHours, topPerformingCoupons=$topPerformingCoupons, returnRate=$returnRate, averageOrderValue=$averageOrderValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'start_date'] = this.startDate.toUtc().toIso8601String();
      json[r'end_date'] = this.endDate.toUtc().toIso8601String();
      json[r'sales_trend'] = this.salesTrend;
      json[r'peak_hours'] = this.peakHours;
      json[r'top_performing_coupons'] = this.topPerformingCoupons;
      json[r'return_rate'] = this.returnRate;
      json[r'average_order_value'] = this.averageOrderValue;
    return json;
  }

  /// Returns a new [PeriodStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeriodStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PeriodStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PeriodStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PeriodStats(
        startDate: mapDateTime(json, r'start_date', r'')!,
        endDate: mapDateTime(json, r'end_date', r'')!,
        salesTrend: SalesTrend.listFromJson(json[r'sales_trend']),
        peakHours: PeakHour.listFromJson(json[r'peak_hours']),
        topPerformingCoupons: CouponPerformance.listFromJson(json[r'top_performing_coupons']),
        returnRate: num.parse('${json[r'return_rate']}'),
        averageOrderValue: mapValueOfType<String>(json, r'average_order_value') ?? '0.0',
      );
    }
    return null;
  }

  static List<PeriodStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PeriodStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeriodStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeriodStats> mapFromJson(dynamic json) {
    final map = <String, PeriodStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeriodStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeriodStats-objects as value to a dart map
  static Map<String, List<PeriodStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PeriodStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PeriodStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'start_date',
    'end_date',
  };
}

