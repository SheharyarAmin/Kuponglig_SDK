//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RatingValue {
  /// Instantiate a new enum with the provided [value].
  const RatingValue._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1 = RatingValue._(1);
  static const number2 = RatingValue._(2);
  static const number3 = RatingValue._(3);
  static const number4 = RatingValue._(4);
  static const number5 = RatingValue._(5);

  /// List of all possible values in this [enum][RatingValue].
  static const values = <RatingValue>[
    number1,
    number2,
    number3,
    number4,
    number5,
  ];

  static RatingValue? fromJson(dynamic value) => RatingValueTypeTransformer().decode(value);

  static List<RatingValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RatingValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RatingValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RatingValue] to int,
/// and [decode] dynamic data back to [RatingValue].
class RatingValueTypeTransformer {
  factory RatingValueTypeTransformer() => _instance ??= const RatingValueTypeTransformer._();

  const RatingValueTypeTransformer._();

  int encode(RatingValue data) => data.value;

  /// Decodes a [dynamic value][data] to a RatingValue.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RatingValue? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1: return RatingValue.number1;
        case 2: return RatingValue.number2;
        case 3: return RatingValue.number3;
        case 4: return RatingValue.number4;
        case 5: return RatingValue.number5;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RatingValueTypeTransformer] instance.
  static RatingValueTypeTransformer? _instance;
}

