//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CouponRedemptionStatus {
  /// Instantiate a new enum with the provided [value].
  const CouponRedemptionStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = CouponRedemptionStatus._(r'SUCCESS');
  static const ALREADY_REDEEMED = CouponRedemptionStatus._(r'ALREADY_REDEEMED');
  static const COUPON_EXPIRED = CouponRedemptionStatus._(r'COUPON_EXPIRED');
  static const COUPON_INACTIVE = CouponRedemptionStatus._(r'COUPON_INACTIVE');
  static const COUPON_NOT_FOUND = CouponRedemptionStatus._(r'COUPON_NOT_FOUND');
  static const COUPON_DOES_NOT_BELONG_TO_STORE = CouponRedemptionStatus._(r'COUPON_DOES_NOT_BELONG_TO_STORE');
  static const REDEMPTION_LIMIT_REACHED = CouponRedemptionStatus._(r'REDEMPTION_LIMIT_REACHED');
  static const USER_INACTIVE = CouponRedemptionStatus._(r'USER_INACTIVE');
  static const STORE_INACTIVE = CouponRedemptionStatus._(r'STORE_INACTIVE');
  static const STORE_NOT_FOUND = CouponRedemptionStatus._(r'STORE_NOT_FOUND');
  static const USER_NOT_FOUND = CouponRedemptionStatus._(r'USER_NOT_FOUND');
  static const UNKNOWN_ERROR = CouponRedemptionStatus._(r'UNKNOWN_ERROR');

  /// List of all possible values in this [enum][CouponRedemptionStatus].
  static const values = <CouponRedemptionStatus>[
    SUCCESS,
    ALREADY_REDEEMED,
    COUPON_EXPIRED,
    COUPON_INACTIVE,
    COUPON_NOT_FOUND,
    COUPON_DOES_NOT_BELONG_TO_STORE,
    REDEMPTION_LIMIT_REACHED,
    USER_INACTIVE,
    STORE_INACTIVE,
    STORE_NOT_FOUND,
    USER_NOT_FOUND,
    UNKNOWN_ERROR,
  ];

  static CouponRedemptionStatus? fromJson(dynamic value) => CouponRedemptionStatusTypeTransformer().decode(value);

  static List<CouponRedemptionStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponRedemptionStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponRedemptionStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CouponRedemptionStatus] to String,
/// and [decode] dynamic data back to [CouponRedemptionStatus].
class CouponRedemptionStatusTypeTransformer {
  factory CouponRedemptionStatusTypeTransformer() => _instance ??= const CouponRedemptionStatusTypeTransformer._();

  const CouponRedemptionStatusTypeTransformer._();

  String encode(CouponRedemptionStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a CouponRedemptionStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CouponRedemptionStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return CouponRedemptionStatus.SUCCESS;
        case r'ALREADY_REDEEMED': return CouponRedemptionStatus.ALREADY_REDEEMED;
        case r'COUPON_EXPIRED': return CouponRedemptionStatus.COUPON_EXPIRED;
        case r'COUPON_INACTIVE': return CouponRedemptionStatus.COUPON_INACTIVE;
        case r'COUPON_NOT_FOUND': return CouponRedemptionStatus.COUPON_NOT_FOUND;
        case r'COUPON_DOES_NOT_BELONG_TO_STORE': return CouponRedemptionStatus.COUPON_DOES_NOT_BELONG_TO_STORE;
        case r'REDEMPTION_LIMIT_REACHED': return CouponRedemptionStatus.REDEMPTION_LIMIT_REACHED;
        case r'USER_INACTIVE': return CouponRedemptionStatus.USER_INACTIVE;
        case r'STORE_INACTIVE': return CouponRedemptionStatus.STORE_INACTIVE;
        case r'STORE_NOT_FOUND': return CouponRedemptionStatus.STORE_NOT_FOUND;
        case r'USER_NOT_FOUND': return CouponRedemptionStatus.USER_NOT_FOUND;
        case r'UNKNOWN_ERROR': return CouponRedemptionStatus.UNKNOWN_ERROR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CouponRedemptionStatusTypeTransformer] instance.
  static CouponRedemptionStatusTypeTransformer? _instance;
}

