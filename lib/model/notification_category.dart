//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NotificationCategory {
  /// Instantiate a new enum with the provided [value].
  const NotificationCategory._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const general = NotificationCategory._(r'general');
  static const promotional = NotificationCategory._(r'promotional');
  static const transaction = NotificationCategory._(r'transaction');
  static const coupon = NotificationCategory._(r'coupon');
  static const system = NotificationCategory._(r'system');

  /// List of all possible values in this [enum][NotificationCategory].
  static const values = <NotificationCategory>[
    general,
    promotional,
    transaction,
    coupon,
    system,
  ];

  static NotificationCategory? fromJson(dynamic value) => NotificationCategoryTypeTransformer().decode(value);

  static List<NotificationCategory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationCategory] to String,
/// and [decode] dynamic data back to [NotificationCategory].
class NotificationCategoryTypeTransformer {
  factory NotificationCategoryTypeTransformer() => _instance ??= const NotificationCategoryTypeTransformer._();

  const NotificationCategoryTypeTransformer._();

  String encode(NotificationCategory data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationCategory.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationCategory? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'general': return NotificationCategory.general;
        case r'promotional': return NotificationCategory.promotional;
        case r'transaction': return NotificationCategory.transaction;
        case r'coupon': return NotificationCategory.coupon;
        case r'system': return NotificationCategory.system;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationCategoryTypeTransformer] instance.
  static NotificationCategoryTypeTransformer? _instance;
}

