//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CouponPerformance {
  /// Returns a new [CouponPerformance] instance.
  CouponPerformance({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.status,
    required this.expiryDate,
    required this.value,
    required this.originalPrice,
    required this.redemptionRate,
    required this.revenueGenerated,
    required this.profitMargin,
    required this.totalViews,
    required this.totalSaves,
    required this.totalRedemptions,
  });

  String id;

  String title;

  String description;

  String category;

  String status;

  DateTime expiryDate;

  num value;

  num originalPrice;

  /// With 1 decimal place
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  num redemptionRate;

  /// With currency symbol
  ///
  /// Minimum value: 0
  num revenueGenerated;

  /// With 1 decimal place
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  num profitMargin;

  /// Minimum value: 0
  int totalViews;

  /// Minimum value: 0
  int totalSaves;

  /// Minimum value: 0
  int totalRedemptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CouponPerformance &&
    other.id == id &&
    other.title == title &&
    other.description == description &&
    other.category == category &&
    other.status == status &&
    other.expiryDate == expiryDate &&
    other.value == value &&
    other.originalPrice == originalPrice &&
    other.redemptionRate == redemptionRate &&
    other.revenueGenerated == revenueGenerated &&
    other.profitMargin == profitMargin &&
    other.totalViews == totalViews &&
    other.totalSaves == totalSaves &&
    other.totalRedemptions == totalRedemptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (description.hashCode) +
    (category.hashCode) +
    (status.hashCode) +
    (expiryDate.hashCode) +
    (value.hashCode) +
    (originalPrice.hashCode) +
    (redemptionRate.hashCode) +
    (revenueGenerated.hashCode) +
    (profitMargin.hashCode) +
    (totalViews.hashCode) +
    (totalSaves.hashCode) +
    (totalRedemptions.hashCode);

  @override
  String toString() => 'CouponPerformance[id=$id, title=$title, description=$description, category=$category, status=$status, expiryDate=$expiryDate, value=$value, originalPrice=$originalPrice, redemptionRate=$redemptionRate, revenueGenerated=$revenueGenerated, profitMargin=$profitMargin, totalViews=$totalViews, totalSaves=$totalSaves, totalRedemptions=$totalRedemptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'description'] = this.description;
      json[r'category'] = this.category;
      json[r'status'] = this.status;
      json[r'expiry_date'] = this.expiryDate.toUtc().toIso8601String();
      json[r'value'] = this.value;
      json[r'original_price'] = this.originalPrice;
      json[r'redemption_rate'] = this.redemptionRate;
      json[r'revenue_generated'] = this.revenueGenerated;
      json[r'profit_margin'] = this.profitMargin;
      json[r'total_views'] = this.totalViews;
      json[r'total_saves'] = this.totalSaves;
      json[r'total_redemptions'] = this.totalRedemptions;
    return json;
  }

  /// Returns a new [CouponPerformance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CouponPerformance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CouponPerformance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CouponPerformance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CouponPerformance(
        id: mapValueOfType<String>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description')!,
        category: mapValueOfType<String>(json, r'category')!,
        status: mapValueOfType<String>(json, r'status')!,
        expiryDate: mapDateTime(json, r'expiry_date', r'')!,
        value: num.parse('${json[r'value']}'),
        originalPrice: num.parse('${json[r'original_price']}'),
        redemptionRate: num.parse('${json[r'redemption_rate']}'),
        revenueGenerated: num.parse('${json[r'revenue_generated']}'),
        profitMargin: num.parse('${json[r'profit_margin']}'),
        totalViews: mapValueOfType<int>(json, r'total_views')!,
        totalSaves: mapValueOfType<int>(json, r'total_saves')!,
        totalRedemptions: mapValueOfType<int>(json, r'total_redemptions')!,
      );
    }
    return null;
  }

  static List<CouponPerformance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponPerformance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponPerformance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CouponPerformance> mapFromJson(dynamic json) {
    final map = <String, CouponPerformance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CouponPerformance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CouponPerformance-objects as value to a dart map
  static Map<String, List<CouponPerformance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CouponPerformance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CouponPerformance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'description',
    'category',
    'status',
    'expiry_date',
    'value',
    'original_price',
    'redemption_rate',
    'revenue_generated',
    'profit_margin',
    'total_views',
    'total_saves',
    'total_redemptions',
  };
}

