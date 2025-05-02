//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NotificationStatus {
  /// Instantiate a new enum with the provided [value].
  const NotificationStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = NotificationStatus._(r'pending');
  static const sent = NotificationStatus._(r'sent');
  static const failed = NotificationStatus._(r'failed');
  static const read = NotificationStatus._(r'read');

  /// List of all possible values in this [enum][NotificationStatus].
  static const values = <NotificationStatus>[
    pending,
    sent,
    failed,
    read,
  ];

  static NotificationStatus? fromJson(dynamic value) => NotificationStatusTypeTransformer().decode(value);

  static List<NotificationStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationStatus] to String,
/// and [decode] dynamic data back to [NotificationStatus].
class NotificationStatusTypeTransformer {
  factory NotificationStatusTypeTransformer() => _instance ??= const NotificationStatusTypeTransformer._();

  const NotificationStatusTypeTransformer._();

  String encode(NotificationStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return NotificationStatus.pending;
        case r'sent': return NotificationStatus.sent;
        case r'failed': return NotificationStatus.failed;
        case r'read': return NotificationStatus.read;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationStatusTypeTransformer] instance.
  static NotificationStatusTypeTransformer? _instance;
}

