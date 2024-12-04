//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CouponStatus {
  /// Instantiate a new enum with the provided [value].
  const CouponStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = CouponStatus._(r'ACTIVE');
  static const EXPIRED = CouponStatus._(r'EXPIRED');
  static const DELETED = CouponStatus._(r'DELETED');
  static const INACTIVE = CouponStatus._(r'INACTIVE');

  /// List of all possible values in this [enum][CouponStatus].
  static const values = <CouponStatus>[
    ACTIVE,
    EXPIRED,
    DELETED,
    INACTIVE,
  ];

  static CouponStatus? fromJson(dynamic value) => CouponStatusTypeTransformer().decode(value);

  static List<CouponStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CouponStatus] to String,
/// and [decode] dynamic data back to [CouponStatus].
class CouponStatusTypeTransformer {
  factory CouponStatusTypeTransformer() => _instance ??= const CouponStatusTypeTransformer._();

  const CouponStatusTypeTransformer._();

  String encode(CouponStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a CouponStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CouponStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return CouponStatus.ACTIVE;
        case r'EXPIRED': return CouponStatus.EXPIRED;
        case r'DELETED': return CouponStatus.DELETED;
        case r'INACTIVE': return CouponStatus.INACTIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CouponStatusTypeTransformer] instance.
  static CouponStatusTypeTransformer? _instance;
}

