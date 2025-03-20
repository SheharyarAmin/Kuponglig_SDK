//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AnalyticsEventType {
  /// Instantiate a new enum with the provided [value].
  const AnalyticsEventType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const viewStore = AnalyticsEventType._(r'viewStore');
  static const viewCoupon = AnalyticsEventType._(r'viewCoupon');
  static const redeemCoupon = AnalyticsEventType._(r'redeemCoupon');
  static const saveCoupon = AnalyticsEventType._(r'saveCoupon');
  static const startSpinWheel = AnalyticsEventType._(r'startSpinWheel');
  static const completeSpinWheel = AnalyticsEventType._(r'completeSpinWheel');
  static const startSubscription = AnalyticsEventType._(r'startSubscription');
  static const completeSubscription = AnalyticsEventType._(r'completeSubscription');
  static const cancelSubscription = AnalyticsEventType._(r'cancelSubscription');
  static const earnPoints = AnalyticsEventType._(r'earnPoints');
  static const spendPoints = AnalyticsEventType._(r'spendPoints');
  static const viewPremiumCoupon = AnalyticsEventType._(r'viewPremiumCoupon');
  static const searchStore = AnalyticsEventType._(r'searchStore');
  static const shareApp = AnalyticsEventType._(r'shareApp');
  static const rateApp = AnalyticsEventType._(r'rateApp');

  /// List of all possible values in this [enum][AnalyticsEventType].
  static const values = <AnalyticsEventType>[
    viewStore,
    viewCoupon,
    redeemCoupon,
    saveCoupon,
    startSpinWheel,
    completeSpinWheel,
    startSubscription,
    completeSubscription,
    cancelSubscription,
    earnPoints,
    spendPoints,
    viewPremiumCoupon,
    searchStore,
    shareApp,
    rateApp,
  ];

  static AnalyticsEventType? fromJson(dynamic value) => AnalyticsEventTypeTypeTransformer().decode(value);

  static List<AnalyticsEventType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyticsEventType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyticsEventType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AnalyticsEventType] to String,
/// and [decode] dynamic data back to [AnalyticsEventType].
class AnalyticsEventTypeTypeTransformer {
  factory AnalyticsEventTypeTypeTransformer() => _instance ??= const AnalyticsEventTypeTypeTransformer._();

  const AnalyticsEventTypeTypeTransformer._();

  String encode(AnalyticsEventType data) => data.value;

  /// Decodes a [dynamic value][data] to a AnalyticsEventType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AnalyticsEventType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'viewStore': return AnalyticsEventType.viewStore;
        case r'viewCoupon': return AnalyticsEventType.viewCoupon;
        case r'redeemCoupon': return AnalyticsEventType.redeemCoupon;
        case r'saveCoupon': return AnalyticsEventType.saveCoupon;
        case r'startSpinWheel': return AnalyticsEventType.startSpinWheel;
        case r'completeSpinWheel': return AnalyticsEventType.completeSpinWheel;
        case r'startSubscription': return AnalyticsEventType.startSubscription;
        case r'completeSubscription': return AnalyticsEventType.completeSubscription;
        case r'cancelSubscription': return AnalyticsEventType.cancelSubscription;
        case r'earnPoints': return AnalyticsEventType.earnPoints;
        case r'spendPoints': return AnalyticsEventType.spendPoints;
        case r'viewPremiumCoupon': return AnalyticsEventType.viewPremiumCoupon;
        case r'searchStore': return AnalyticsEventType.searchStore;
        case r'shareApp': return AnalyticsEventType.shareApp;
        case r'rateApp': return AnalyticsEventType.rateApp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AnalyticsEventTypeTypeTransformer] instance.
  static AnalyticsEventTypeTypeTransformer? _instance;
}

