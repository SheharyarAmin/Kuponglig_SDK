//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class Platform {
  /// Instantiate a new enum with the provided [value].
  const Platform._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CUSTOMER = Platform._(r'CUSTOMER');
  static const VENDOR = Platform._(r'VENDOR');

  /// List of all possible values in this [enum][Platform].
  static const values = <Platform>[
    CUSTOMER,
    VENDOR,
  ];

  static Platform? fromJson(dynamic value) => PlatformTypeTransformer().decode(value);

  static List<Platform> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Platform>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Platform.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Platform] to String,
/// and [decode] dynamic data back to [Platform].
class PlatformTypeTransformer {
  factory PlatformTypeTransformer() => _instance ??= const PlatformTypeTransformer._();

  const PlatformTypeTransformer._();

  String encode(Platform data) => data.value;

  /// Decodes a [dynamic value][data] to a Platform.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Platform? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CUSTOMER': return Platform.CUSTOMER;
        case r'VENDOR': return Platform.VENDOR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlatformTypeTransformer] instance.
  static PlatformTypeTransformer? _instance;
}

