//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ContactFormStatus {
  /// Instantiate a new enum with the provided [value].
  const ContactFormStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OPEN = ContactFormStatus._(r'OPEN');
  static const IN_PROGRESS = ContactFormStatus._(r'IN_PROGRESS');
  static const RESOLVED = ContactFormStatus._(r'RESOLVED');
  static const CLOSED = ContactFormStatus._(r'CLOSED');

  /// List of all possible values in this [enum][ContactFormStatus].
  static const values = <ContactFormStatus>[
    OPEN,
    IN_PROGRESS,
    RESOLVED,
    CLOSED,
  ];

  static ContactFormStatus? fromJson(dynamic value) => ContactFormStatusTypeTransformer().decode(value);

  static List<ContactFormStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactFormStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactFormStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ContactFormStatus] to String,
/// and [decode] dynamic data back to [ContactFormStatus].
class ContactFormStatusTypeTransformer {
  factory ContactFormStatusTypeTransformer() => _instance ??= const ContactFormStatusTypeTransformer._();

  const ContactFormStatusTypeTransformer._();

  String encode(ContactFormStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a ContactFormStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContactFormStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OPEN': return ContactFormStatus.OPEN;
        case r'IN_PROGRESS': return ContactFormStatus.IN_PROGRESS;
        case r'RESOLVED': return ContactFormStatus.RESOLVED;
        case r'CLOSED': return ContactFormStatus.CLOSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ContactFormStatusTypeTransformer] instance.
  static ContactFormStatusTypeTransformer? _instance;
}

