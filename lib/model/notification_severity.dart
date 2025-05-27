//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NotificationSeverity {
  /// Instantiate a new enum with the provided [value].
  const NotificationSeverity._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const info = NotificationSeverity._(r'info');
  static const warning = NotificationSeverity._(r'warning');
  static const error = NotificationSeverity._(r'error');
  static const success = NotificationSeverity._(r'success');

  /// List of all possible values in this [enum][NotificationSeverity].
  static const values = <NotificationSeverity>[
    info,
    warning,
    error,
    success,
  ];

  static NotificationSeverity? fromJson(dynamic value) => NotificationSeverityTypeTransformer().decode(value);

  static List<NotificationSeverity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationSeverity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationSeverity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationSeverity] to String,
/// and [decode] dynamic data back to [NotificationSeverity].
class NotificationSeverityTypeTransformer {
  factory NotificationSeverityTypeTransformer() => _instance ??= const NotificationSeverityTypeTransformer._();

  const NotificationSeverityTypeTransformer._();

  String encode(NotificationSeverity data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationSeverity.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationSeverity? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'info': return NotificationSeverity.info;
        case r'warning': return NotificationSeverity.warning;
        case r'error': return NotificationSeverity.error;
        case r'success': return NotificationSeverity.success;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationSeverityTypeTransformer] instance.
  static NotificationSeverityTypeTransformer? _instance;
}

