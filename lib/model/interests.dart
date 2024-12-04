//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class Interests {
  /// Instantiate a new enum with the provided [value].
  const Interests._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const shopping = Interests._(r'Shopping');
  static const food = Interests._(r'Food');
  static const travel = Interests._(r'Travel');
  static const beauty = Interests._(r'Beauty');
  static const fitness = Interests._(r'Fitness');
  static const fashion = Interests._(r'Fashion');
  static const home = Interests._(r'Home');
  static const health = Interests._(r'Health');
  static const outdoors = Interests._(r'Outdoors');
  static const entertainment = Interests._(r'Entertainment');
  static const electronics = Interests._(r'Electronics');

  /// List of all possible values in this [enum][Interests].
  static const values = <Interests>[
    shopping,
    food,
    travel,
    beauty,
    fitness,
    fashion,
    home,
    health,
    outdoors,
    entertainment,
    electronics,
  ];

  static Interests? fromJson(dynamic value) => InterestsTypeTransformer().decode(value);

  static List<Interests> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Interests>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Interests.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Interests] to String,
/// and [decode] dynamic data back to [Interests].
class InterestsTypeTransformer {
  factory InterestsTypeTransformer() => _instance ??= const InterestsTypeTransformer._();

  const InterestsTypeTransformer._();

  String encode(Interests data) => data.value;

  /// Decodes a [dynamic value][data] to a Interests.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Interests? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Shopping': return Interests.shopping;
        case r'Food': return Interests.food;
        case r'Travel': return Interests.travel;
        case r'Beauty': return Interests.beauty;
        case r'Fitness': return Interests.fitness;
        case r'Fashion': return Interests.fashion;
        case r'Home': return Interests.home;
        case r'Health': return Interests.health;
        case r'Outdoors': return Interests.outdoors;
        case r'Entertainment': return Interests.entertainment;
        case r'Electronics': return Interests.electronics;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InterestsTypeTransformer] instance.
  static InterestsTypeTransformer? _instance;
}

