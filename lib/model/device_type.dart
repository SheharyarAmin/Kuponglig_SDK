//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DeviceType {
  /// Instantiate a new enum with the provided [value].
  const DeviceType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const android = DeviceType._(r'android');
  static const ios = DeviceType._(r'ios');
  static const web = DeviceType._(r'web');

  /// List of all possible values in this [enum][DeviceType].
  static const values = <DeviceType>[
    android,
    ios,
    web,
  ];

  static DeviceType? fromJson(dynamic value) => DeviceTypeTypeTransformer().decode(value);

  static List<DeviceType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeviceType] to String,
/// and [decode] dynamic data back to [DeviceType].
class DeviceTypeTypeTransformer {
  factory DeviceTypeTypeTransformer() => _instance ??= const DeviceTypeTypeTransformer._();

  const DeviceTypeTypeTransformer._();

  String encode(DeviceType data) => data.value;

  /// Decodes a [dynamic value][data] to a DeviceType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeviceType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'android': return DeviceType.android;
        case r'ios': return DeviceType.ios;
        case r'web': return DeviceType.web;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeviceTypeTypeTransformer] instance.
  static DeviceTypeTypeTransformer? _instance;
}

