//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WonCouponStatus {
  /// Instantiate a new enum with the provided [value].
  const WonCouponStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = WonCouponStatus._(r'active');
  static const expired = WonCouponStatus._(r'expired');
  static const redeemed = WonCouponStatus._(r'redeemed');
  static const deleted = WonCouponStatus._(r'deleted');
  static const notAvailable = WonCouponStatus._(r'not_available');

  /// List of all possible values in this [enum][WonCouponStatus].
  static const values = <WonCouponStatus>[
    active,
    expired,
    redeemed,
    deleted,
    notAvailable,
  ];

  static WonCouponStatus? fromJson(dynamic value) => WonCouponStatusTypeTransformer().decode(value);

  static List<WonCouponStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WonCouponStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WonCouponStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WonCouponStatus] to String,
/// and [decode] dynamic data back to [WonCouponStatus].
class WonCouponStatusTypeTransformer {
  factory WonCouponStatusTypeTransformer() => _instance ??= const WonCouponStatusTypeTransformer._();

  const WonCouponStatusTypeTransformer._();

  String encode(WonCouponStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a WonCouponStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WonCouponStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return WonCouponStatus.active;
        case r'expired': return WonCouponStatus.expired;
        case r'redeemed': return WonCouponStatus.redeemed;
        case r'deleted': return WonCouponStatus.deleted;
        case r'not_available': return WonCouponStatus.notAvailable;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WonCouponStatusTypeTransformer] instance.
  static WonCouponStatusTypeTransformer? _instance;
}

