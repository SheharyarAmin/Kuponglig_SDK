//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RewardType {
  /// Instantiate a new enum with the provided [value].
  const RewardType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const points = RewardType._(r'points');
  static const premiumCoupon = RewardType._(r'premium_coupon');

  /// List of all possible values in this [enum][RewardType].
  static const values = <RewardType>[
    points,
    premiumCoupon,
  ];

  static RewardType? fromJson(dynamic value) => RewardTypeTypeTransformer().decode(value);

  static List<RewardType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RewardType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RewardType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RewardType] to String,
/// and [decode] dynamic data back to [RewardType].
class RewardTypeTypeTransformer {
  factory RewardTypeTypeTransformer() => _instance ??= const RewardTypeTypeTransformer._();

  const RewardTypeTypeTransformer._();

  String encode(RewardType data) => data.value;

  /// Decodes a [dynamic value][data] to a RewardType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RewardType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'points': return RewardType.points;
        case r'premium_coupon': return RewardType.premiumCoupon;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RewardTypeTypeTransformer] instance.
  static RewardTypeTypeTransformer? _instance;
}

