//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StoreTypes {
  /// Instantiate a new enum with the provided [value].
  const StoreTypes._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CLOTHING = StoreTypes._(r'CLOTHING');
  static const GROCERY = StoreTypes._(r'GROCERY');
  static const ELECTRONICS = StoreTypes._(r'ELECTRONICS');
  static const FURNITURE = StoreTypes._(r'FURNITURE');
  static const ACCESSORIES = StoreTypes._(r'ACCESSORIES');
  static const PHARMACY = StoreTypes._(r'PHARMACY');
  static const RESTAURANT = StoreTypes._(r'RESTAURANT');
  static const OTHER = StoreTypes._(r'OTHER');

  /// List of all possible values in this [enum][StoreTypes].
  static const values = <StoreTypes>[
    CLOTHING,
    GROCERY,
    ELECTRONICS,
    FURNITURE,
    ACCESSORIES,
    PHARMACY,
    RESTAURANT,
    OTHER,
  ];

  static StoreTypes? fromJson(dynamic value) => StoreTypesTypeTransformer().decode(value);

  static List<StoreTypes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreTypes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreTypes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StoreTypes] to String,
/// and [decode] dynamic data back to [StoreTypes].
class StoreTypesTypeTransformer {
  factory StoreTypesTypeTransformer() => _instance ??= const StoreTypesTypeTransformer._();

  const StoreTypesTypeTransformer._();

  String encode(StoreTypes data) => data.value;

  /// Decodes a [dynamic value][data] to a StoreTypes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StoreTypes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CLOTHING': return StoreTypes.CLOTHING;
        case r'GROCERY': return StoreTypes.GROCERY;
        case r'ELECTRONICS': return StoreTypes.ELECTRONICS;
        case r'FURNITURE': return StoreTypes.FURNITURE;
        case r'ACCESSORIES': return StoreTypes.ACCESSORIES;
        case r'PHARMACY': return StoreTypes.PHARMACY;
        case r'RESTAURANT': return StoreTypes.RESTAURANT;
        case r'OTHER': return StoreTypes.OTHER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StoreTypesTypeTransformer] instance.
  static StoreTypesTypeTransformer? _instance;
}

