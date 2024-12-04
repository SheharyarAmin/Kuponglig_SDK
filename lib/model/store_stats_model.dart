//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoreStatsModel {
  /// Returns a new [StoreStatsModel] instance.
  StoreStatsModel({
    required this.storeId,
    this.totalCouponsRedeemed = 0,
    this.totalSales = 0,
    this.totalProfit = 0,
    this.lastRedeemedAt,
  });

  String storeId;

  int totalCouponsRedeemed;

  num totalSales;

  num totalProfit;

  DateTime? lastRedeemedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoreStatsModel &&
    other.storeId == storeId &&
    other.totalCouponsRedeemed == totalCouponsRedeemed &&
    other.totalSales == totalSales &&
    other.totalProfit == totalProfit &&
    other.lastRedeemedAt == lastRedeemedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storeId.hashCode) +
    (totalCouponsRedeemed.hashCode) +
    (totalSales.hashCode) +
    (totalProfit.hashCode) +
    (lastRedeemedAt == null ? 0 : lastRedeemedAt!.hashCode);

  @override
  String toString() => 'StoreStatsModel[storeId=$storeId, totalCouponsRedeemed=$totalCouponsRedeemed, totalSales=$totalSales, totalProfit=$totalProfit, lastRedeemedAt=$lastRedeemedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'store_id'] = this.storeId;
      json[r'total_coupons_redeemed'] = this.totalCouponsRedeemed;
      json[r'total_sales'] = this.totalSales;
      json[r'total_profit'] = this.totalProfit;
    if (this.lastRedeemedAt != null) {
      json[r'last_redeemed_at'] = this.lastRedeemedAt!.toUtc().toIso8601String();
    } else {
      json[r'last_redeemed_at'] = null;
    }
    return json;
  }

  /// Returns a new [StoreStatsModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoreStatsModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoreStatsModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoreStatsModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoreStatsModel(
        storeId: mapValueOfType<String>(json, r'store_id')!,
        totalCouponsRedeemed: mapValueOfType<int>(json, r'total_coupons_redeemed') ?? 0,
        totalSales: num.parse('${json[r'total_sales']}'),
        totalProfit: num.parse('${json[r'total_profit']}'),
        lastRedeemedAt: mapDateTime(json, r'last_redeemed_at', r''),
      );
    }
    return null;
  }

  static List<StoreStatsModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreStatsModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreStatsModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoreStatsModel> mapFromJson(dynamic json) {
    final map = <String, StoreStatsModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoreStatsModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoreStatsModel-objects as value to a dart map
  static Map<String, List<StoreStatsModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoreStatsModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoreStatsModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'store_id',
  };
}

