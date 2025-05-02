//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NotificationTarget {
  /// Instantiate a new enum with the provided [value].
  const NotificationTarget._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const user = NotificationTarget._(r'user');
  static const vendor = NotificationTarget._(r'vendor');
  static const allUsers = NotificationTarget._(r'all_users');
  static const allVendors = NotificationTarget._(r'all_vendors');

  /// List of all possible values in this [enum][NotificationTarget].
  static const values = <NotificationTarget>[
    user,
    vendor,
    allUsers,
    allVendors,
  ];

  static NotificationTarget? fromJson(dynamic value) => NotificationTargetTypeTransformer().decode(value);

  static List<NotificationTarget> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTarget>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTarget.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTarget] to String,
/// and [decode] dynamic data back to [NotificationTarget].
class NotificationTargetTypeTransformer {
  factory NotificationTargetTypeTransformer() => _instance ??= const NotificationTargetTypeTransformer._();

  const NotificationTargetTypeTransformer._();

  String encode(NotificationTarget data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTarget.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTarget? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'user': return NotificationTarget.user;
        case r'vendor': return NotificationTarget.vendor;
        case r'all_users': return NotificationTarget.allUsers;
        case r'all_vendors': return NotificationTarget.allVendors;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTargetTypeTransformer] instance.
  static NotificationTargetTypeTransformer? _instance;
}

