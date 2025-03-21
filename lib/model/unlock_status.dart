//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UnlockStatus {
  /// Instantiate a new enum with the provided [value].
  const UnlockStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = UnlockStatus._(r'SUCCESS');
  static const USER_ERROR = UnlockStatus._(r'USER_ERROR');
  static const COUPON_ERROR = UnlockStatus._(r'COUPON_ERROR');
  static const INSUFFICIENT_POINTS = UnlockStatus._(r'INSUFFICIENT_POINTS');
  static const ALREADY_UNLOCKED = UnlockStatus._(r'ALREADY_UNLOCKED');
  static const UNKNOWN_ERROR = UnlockStatus._(r'UNKNOWN_ERROR');

  /// List of all possible values in this [enum][UnlockStatus].
  static const values = <UnlockStatus>[
    SUCCESS,
    USER_ERROR,
    COUPON_ERROR,
    INSUFFICIENT_POINTS,
    ALREADY_UNLOCKED,
    UNKNOWN_ERROR,
  ];

  static UnlockStatus? fromJson(dynamic value) => UnlockStatusTypeTransformer().decode(value);

  static List<UnlockStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnlockStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnlockStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnlockStatus] to String,
/// and [decode] dynamic data back to [UnlockStatus].
class UnlockStatusTypeTransformer {
  factory UnlockStatusTypeTransformer() => _instance ??= const UnlockStatusTypeTransformer._();

  const UnlockStatusTypeTransformer._();

  String encode(UnlockStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a UnlockStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnlockStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return UnlockStatus.SUCCESS;
        case r'USER_ERROR': return UnlockStatus.USER_ERROR;
        case r'COUPON_ERROR': return UnlockStatus.COUPON_ERROR;
        case r'INSUFFICIENT_POINTS': return UnlockStatus.INSUFFICIENT_POINTS;
        case r'ALREADY_UNLOCKED': return UnlockStatus.ALREADY_UNLOCKED;
        case r'UNKNOWN_ERROR': return UnlockStatus.UNKNOWN_ERROR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnlockStatusTypeTransformer] instance.
  static UnlockStatusTypeTransformer? _instance;
}

