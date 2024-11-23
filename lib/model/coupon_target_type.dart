//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CouponTargetType {
  /// Instantiate a new enum with the provided [value].
  const CouponTargetType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const USER = CouponTargetType._(r'USER');
  static const STORE = CouponTargetType._(r'STORE');
  static const CATEGORY = CouponTargetType._(r'CATEGORY');
  static const ALL = CouponTargetType._(r'ALL');

  /// List of all possible values in this [enum][CouponTargetType].
  static const values = <CouponTargetType>[
    USER,
    STORE,
    CATEGORY,
    ALL,
  ];

  static CouponTargetType? fromJson(dynamic value) => CouponTargetTypeTypeTransformer().decode(value);

  static List<CouponTargetType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponTargetType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponTargetType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CouponTargetType] to String,
/// and [decode] dynamic data back to [CouponTargetType].
class CouponTargetTypeTypeTransformer {
  factory CouponTargetTypeTypeTransformer() => _instance ??= const CouponTargetTypeTypeTransformer._();

  const CouponTargetTypeTypeTransformer._();

  String encode(CouponTargetType data) => data.value;

  /// Decodes a [dynamic value][data] to a CouponTargetType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CouponTargetType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'USER': return CouponTargetType.USER;
        case r'STORE': return CouponTargetType.STORE;
        case r'CATEGORY': return CouponTargetType.CATEGORY;
        case r'ALL': return CouponTargetType.ALL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CouponTargetTypeTypeTransformer] instance.
  static CouponTargetTypeTypeTransformer? _instance;
}

