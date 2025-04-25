//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CouponStatusInput {
  /// Instantiate a new enum with the provided [value].
  const CouponStatusInput._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = CouponStatusInput._(r'ACTIVE');
  static const EXPIRED = CouponStatusInput._(r'EXPIRED');
  static const DELETED = CouponStatusInput._(r'DELETED');
  static const INACTIVE = CouponStatusInput._(r'INACTIVE');

  /// List of all possible values in this [enum][CouponStatusInput].
  static const values = <CouponStatusInput>[
    ACTIVE,
    EXPIRED,
    DELETED,
    INACTIVE,
  ];

  static CouponStatusInput? fromJson(dynamic value) => CouponStatusInputTypeTransformer().decode(value);

  static List<CouponStatusInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponStatusInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponStatusInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CouponStatusInput] to String,
/// and [decode] dynamic data back to [CouponStatusInput].
class CouponStatusInputTypeTransformer {
  factory CouponStatusInputTypeTransformer() => _instance ??= const CouponStatusInputTypeTransformer._();

  const CouponStatusInputTypeTransformer._();

  String encode(CouponStatusInput data) => data.value;

  /// Decodes a [dynamic value][data] to a CouponStatusInput.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CouponStatusInput? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return CouponStatusInput.ACTIVE;
        case r'EXPIRED': return CouponStatusInput.EXPIRED;
        case r'DELETED': return CouponStatusInput.DELETED;
        case r'INACTIVE': return CouponStatusInput.INACTIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CouponStatusInputTypeTransformer] instance.
  static CouponStatusInputTypeTransformer? _instance;
}

