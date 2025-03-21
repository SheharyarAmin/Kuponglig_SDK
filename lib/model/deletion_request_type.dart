//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DeletionRequestType {
  /// Instantiate a new enum with the provided [value].
  const DeletionRequestType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const USER = DeletionRequestType._(r'USER');
  static const VENDOR = DeletionRequestType._(r'VENDOR');

  /// List of all possible values in this [enum][DeletionRequestType].
  static const values = <DeletionRequestType>[
    USER,
    VENDOR,
  ];

  static DeletionRequestType? fromJson(dynamic value) => DeletionRequestTypeTypeTransformer().decode(value);

  static List<DeletionRequestType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeletionRequestType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeletionRequestType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeletionRequestType] to String,
/// and [decode] dynamic data back to [DeletionRequestType].
class DeletionRequestTypeTypeTransformer {
  factory DeletionRequestTypeTypeTransformer() => _instance ??= const DeletionRequestTypeTypeTransformer._();

  const DeletionRequestTypeTypeTransformer._();

  String encode(DeletionRequestType data) => data.value;

  /// Decodes a [dynamic value][data] to a DeletionRequestType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeletionRequestType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'USER': return DeletionRequestType.USER;
        case r'VENDOR': return DeletionRequestType.VENDOR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeletionRequestTypeTypeTransformer] instance.
  static DeletionRequestTypeTypeTransformer? _instance;
}

