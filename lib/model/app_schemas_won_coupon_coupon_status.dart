//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AppSchemasWonCouponCouponStatus {
  /// Instantiate a new enum with the provided [value].
  const AppSchemasWonCouponCouponStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = AppSchemasWonCouponCouponStatus._(r'active');
  static const expired = AppSchemasWonCouponCouponStatus._(r'expired');
  static const redeemed = AppSchemasWonCouponCouponStatus._(r'redeemed');
  static const deleted = AppSchemasWonCouponCouponStatus._(r'deleted');
  static const notAvailable = AppSchemasWonCouponCouponStatus._(r'not_available');

  /// List of all possible values in this [enum][AppSchemasWonCouponCouponStatus].
  static const values = <AppSchemasWonCouponCouponStatus>[
    active,
    expired,
    redeemed,
    deleted,
    notAvailable,
  ];

  static AppSchemasWonCouponCouponStatus? fromJson(dynamic value) => AppSchemasWonCouponCouponStatusTypeTransformer().decode(value);

  static List<AppSchemasWonCouponCouponStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppSchemasWonCouponCouponStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppSchemasWonCouponCouponStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AppSchemasWonCouponCouponStatus] to String,
/// and [decode] dynamic data back to [AppSchemasWonCouponCouponStatus].
class AppSchemasWonCouponCouponStatusTypeTransformer {
  factory AppSchemasWonCouponCouponStatusTypeTransformer() => _instance ??= const AppSchemasWonCouponCouponStatusTypeTransformer._();

  const AppSchemasWonCouponCouponStatusTypeTransformer._();

  String encode(AppSchemasWonCouponCouponStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a AppSchemasWonCouponCouponStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AppSchemasWonCouponCouponStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return AppSchemasWonCouponCouponStatus.active;
        case r'expired': return AppSchemasWonCouponCouponStatus.expired;
        case r'redeemed': return AppSchemasWonCouponCouponStatus.redeemed;
        case r'deleted': return AppSchemasWonCouponCouponStatus.deleted;
        case r'not_available': return AppSchemasWonCouponCouponStatus.notAvailable;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AppSchemasWonCouponCouponStatusTypeTransformer] instance.
  static AppSchemasWonCouponCouponStatusTypeTransformer? _instance;
}

