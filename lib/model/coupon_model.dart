//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CouponModel {
  /// Returns a new [CouponModel] instance.
  CouponModel({
    required this.id,
    required this.vendorId,
    required this.storeId,
    required this.title,
    required this.description,
    required this.actualValue,
    required this.discountValue,
    required this.saleValue,
    this.totalSaleValueLimit,
    this.startDate,
    this.expirationDate,
    this.totalCoupons,
    required this.redeemedCoupons,
    required this.status,
    required this.targetType,
    required this.termsAndConditions,
    required this.minPurchaseAmount,
    required this.isPremium,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String vendorId;

  String storeId;

  String title;

  String description;

  num actualValue;

  num discountValue;

  num saleValue;

  num? totalSaleValueLimit;

  DateTime? startDate;

  DateTime? expirationDate;

  int? totalCoupons;

  int redeemedCoupons;

  CouponStatus status;

  CouponTargetType targetType;

  String termsAndConditions;

  num minPurchaseAmount;

  bool isPremium;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CouponModel &&
    other.id == id &&
    other.vendorId == vendorId &&
    other.storeId == storeId &&
    other.title == title &&
    other.description == description &&
    other.actualValue == actualValue &&
    other.discountValue == discountValue &&
    other.saleValue == saleValue &&
    other.totalSaleValueLimit == totalSaleValueLimit &&
    other.startDate == startDate &&
    other.expirationDate == expirationDate &&
    other.totalCoupons == totalCoupons &&
    other.redeemedCoupons == redeemedCoupons &&
    other.status == status &&
    other.targetType == targetType &&
    other.termsAndConditions == termsAndConditions &&
    other.minPurchaseAmount == minPurchaseAmount &&
    other.isPremium == isPremium &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (vendorId.hashCode) +
    (storeId.hashCode) +
    (title.hashCode) +
    (description.hashCode) +
    (actualValue.hashCode) +
    (discountValue.hashCode) +
    (saleValue.hashCode) +
    (totalSaleValueLimit == null ? 0 : totalSaleValueLimit!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (expirationDate == null ? 0 : expirationDate!.hashCode) +
    (totalCoupons == null ? 0 : totalCoupons!.hashCode) +
    (redeemedCoupons.hashCode) +
    (status.hashCode) +
    (targetType.hashCode) +
    (termsAndConditions.hashCode) +
    (minPurchaseAmount.hashCode) +
    (isPremium.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'CouponModel[id=$id, vendorId=$vendorId, storeId=$storeId, title=$title, description=$description, actualValue=$actualValue, discountValue=$discountValue, saleValue=$saleValue, totalSaleValueLimit=$totalSaleValueLimit, startDate=$startDate, expirationDate=$expirationDate, totalCoupons=$totalCoupons, redeemedCoupons=$redeemedCoupons, status=$status, targetType=$targetType, termsAndConditions=$termsAndConditions, minPurchaseAmount=$minPurchaseAmount, isPremium=$isPremium, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'vendorId'] = this.vendorId;
      json[r'storeId'] = this.storeId;
      json[r'title'] = this.title;
      json[r'description'] = this.description;
      json[r'actualValue'] = this.actualValue;
      json[r'discountValue'] = this.discountValue;
      json[r'saleValue'] = this.saleValue;
    if (this.totalSaleValueLimit != null) {
      json[r'totalSaleValueLimit'] = this.totalSaleValueLimit;
    } else {
      json[r'totalSaleValueLimit'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate!.toUtc().toIso8601String();
    } else {
      json[r'startDate'] = null;
    }
    if (this.expirationDate != null) {
      json[r'expirationDate'] = this.expirationDate!.toUtc().toIso8601String();
    } else {
      json[r'expirationDate'] = null;
    }
    if (this.totalCoupons != null) {
      json[r'totalCoupons'] = this.totalCoupons;
    } else {
      json[r'totalCoupons'] = null;
    }
      json[r'redeemedCoupons'] = this.redeemedCoupons;
      json[r'status'] = this.status;
      json[r'targetType'] = this.targetType;
      json[r'termsAndConditions'] = this.termsAndConditions;
      json[r'minPurchaseAmount'] = this.minPurchaseAmount;
      json[r'isPremium'] = this.isPremium;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [CouponModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CouponModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CouponModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CouponModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CouponModel(
        id: mapValueOfType<String>(json, r'id')!,
        vendorId: mapValueOfType<String>(json, r'vendorId')!,
        storeId: mapValueOfType<String>(json, r'storeId')!,
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description')!,
        actualValue: num.parse('${json[r'actualValue']}'),
        discountValue: num.parse('${json[r'discountValue']}'),
        saleValue: num.parse('${json[r'saleValue']}'),
        totalSaleValueLimit: json[r'totalSaleValueLimit'] == null
            ? null
            : num.parse('${json[r'totalSaleValueLimit']}'),
        startDate: mapDateTime(json, r'startDate', r''),
        expirationDate: mapDateTime(json, r'expirationDate', r''),
        totalCoupons: mapValueOfType<int>(json, r'totalCoupons'),
        redeemedCoupons: mapValueOfType<int>(json, r'redeemedCoupons')!,
        status: CouponStatus.fromJson(json[r'status'])!,
        targetType: CouponTargetType.fromJson(json[r'targetType'])!,
        termsAndConditions: mapValueOfType<String>(json, r'termsAndConditions')!,
        minPurchaseAmount: num.parse('${json[r'minPurchaseAmount']}'),
        isPremium: mapValueOfType<bool>(json, r'isPremium')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<CouponModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CouponModel> mapFromJson(dynamic json) {
    final map = <String, CouponModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CouponModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CouponModel-objects as value to a dart map
  static Map<String, List<CouponModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CouponModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CouponModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'vendorId',
    'storeId',
    'title',
    'description',
    'actualValue',
    'discountValue',
    'saleValue',
    'redeemedCoupons',
    'status',
    'targetType',
    'termsAndConditions',
    'minPurchaseAmount',
    'isPremium',
    'createdAt',
    'updatedAt',
  };
}

