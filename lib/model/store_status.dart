//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StoreStatus {
  /// Instantiate a new enum with the provided [value].
  const StoreStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = StoreStatus._(r'PENDING');
  static const ACTIVE = StoreStatus._(r'ACTIVE');
  static const INACTIVE = StoreStatus._(r'INACTIVE');

  /// List of all possible values in this [enum][StoreStatus].
  static const values = <StoreStatus>[
    PENDING,
    ACTIVE,
    INACTIVE,
  ];

  static StoreStatus? fromJson(dynamic value) => StoreStatusTypeTransformer().decode(value);

  static List<StoreStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StoreStatus] to String,
/// and [decode] dynamic data back to [StoreStatus].
class StoreStatusTypeTransformer {
  factory StoreStatusTypeTransformer() => _instance ??= const StoreStatusTypeTransformer._();

  const StoreStatusTypeTransformer._();

  String encode(StoreStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a StoreStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StoreStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return StoreStatus.PENDING;
        case r'ACTIVE': return StoreStatus.ACTIVE;
        case r'INACTIVE': return StoreStatus.INACTIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StoreStatusTypeTransformer] instance.
  static StoreStatusTypeTransformer? _instance;
}

