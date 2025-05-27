//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CouponSubscriptionStatus {
  /// Instantiate a new enum with the provided [value].
  const CouponSubscriptionStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = CouponSubscriptionStatus._(r'ACTIVE');
  static const INACTIVE = CouponSubscriptionStatus._(r'INACTIVE');

  /// List of all possible values in this [enum][CouponSubscriptionStatus].
  static const values = <CouponSubscriptionStatus>[
    ACTIVE,
    INACTIVE,
  ];

  static CouponSubscriptionStatus? fromJson(dynamic value) => CouponSubscriptionStatusTypeTransformer().decode(value);

  static List<CouponSubscriptionStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponSubscriptionStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponSubscriptionStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CouponSubscriptionStatus] to String,
/// and [decode] dynamic data back to [CouponSubscriptionStatus].
class CouponSubscriptionStatusTypeTransformer {
  factory CouponSubscriptionStatusTypeTransformer() => _instance ??= const CouponSubscriptionStatusTypeTransformer._();

  const CouponSubscriptionStatusTypeTransformer._();

  String encode(CouponSubscriptionStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a CouponSubscriptionStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CouponSubscriptionStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return CouponSubscriptionStatus.ACTIVE;
        case r'INACTIVE': return CouponSubscriptionStatus.INACTIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CouponSubscriptionStatusTypeTransformer] instance.
  static CouponSubscriptionStatusTypeTransformer? _instance;
}

