//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ContactFormType {
  /// Instantiate a new enum with the provided [value].
  const ContactFormType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const USER = ContactFormType._(r'USER');
  static const VENDOR = ContactFormType._(r'VENDOR');

  /// List of all possible values in this [enum][ContactFormType].
  static const values = <ContactFormType>[
    USER,
    VENDOR,
  ];

  static ContactFormType? fromJson(dynamic value) => ContactFormTypeTypeTransformer().decode(value);

  static List<ContactFormType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactFormType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactFormType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ContactFormType] to String,
/// and [decode] dynamic data back to [ContactFormType].
class ContactFormTypeTypeTransformer {
  factory ContactFormTypeTypeTransformer() => _instance ??= const ContactFormTypeTypeTransformer._();

  const ContactFormTypeTypeTransformer._();

  String encode(ContactFormType data) => data.value;

  /// Decodes a [dynamic value][data] to a ContactFormType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContactFormType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'USER': return ContactFormType.USER;
        case r'VENDOR': return ContactFormType.VENDOR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ContactFormTypeTypeTransformer] instance.
  static ContactFormTypeTypeTransformer? _instance;
}

