//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AppUtilsEnumsCouponStatus {
  /// Instantiate a new enum with the provided [value].
  const AppUtilsEnumsCouponStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = AppUtilsEnumsCouponStatus._(r'ACTIVE');
  static const EXPIRED = AppUtilsEnumsCouponStatus._(r'EXPIRED');
  static const DELETED = AppUtilsEnumsCouponStatus._(r'DELETED');
  static const INACTIVE = AppUtilsEnumsCouponStatus._(r'INACTIVE');

  /// List of all possible values in this [enum][AppUtilsEnumsCouponStatus].
  static const values = <AppUtilsEnumsCouponStatus>[
    ACTIVE,
    EXPIRED,
    DELETED,
    INACTIVE,
  ];

  static AppUtilsEnumsCouponStatus? fromJson(dynamic value) => AppUtilsEnumsCouponStatusTypeTransformer().decode(value);

  static List<AppUtilsEnumsCouponStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppUtilsEnumsCouponStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppUtilsEnumsCouponStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AppUtilsEnumsCouponStatus] to String,
/// and [decode] dynamic data back to [AppUtilsEnumsCouponStatus].
class AppUtilsEnumsCouponStatusTypeTransformer {
  factory AppUtilsEnumsCouponStatusTypeTransformer() => _instance ??= const AppUtilsEnumsCouponStatusTypeTransformer._();

  const AppUtilsEnumsCouponStatusTypeTransformer._();

  String encode(AppUtilsEnumsCouponStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a AppUtilsEnumsCouponStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AppUtilsEnumsCouponStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return AppUtilsEnumsCouponStatus.ACTIVE;
        case r'EXPIRED': return AppUtilsEnumsCouponStatus.EXPIRED;
        case r'DELETED': return AppUtilsEnumsCouponStatus.DELETED;
        case r'INACTIVE': return AppUtilsEnumsCouponStatus.INACTIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AppUtilsEnumsCouponStatusTypeTransformer] instance.
  static AppUtilsEnumsCouponStatusTypeTransformer? _instance;
}

