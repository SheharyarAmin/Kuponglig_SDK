//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// User app screen identifiers.
class UserScreen {
  /// Instantiate a new enum with the provided [value].
  const UserScreen._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const home = UserScreen._(r'home');
  static const explore = UserScreen._(r'explore');
  static const coupons = UserScreen._(r'coupons');
  static const favorites = UserScreen._(r'favorites');
  static const profile = UserScreen._(r'profile');
  static const points = UserScreen._(r'points');
  static const subscription = UserScreen._(r'subscription');
  static const settings = UserScreen._(r'settings');
  static const wheel = UserScreen._(r'wheel');
  static const stores = UserScreen._(r'stores');

  /// List of all possible values in this [enum][UserScreen].
  static const values = <UserScreen>[
    home,
    explore,
    coupons,
    favorites,
    profile,
    points,
    subscription,
    settings,
    wheel,
    stores,
  ];

  static UserScreen? fromJson(dynamic value) => UserScreenTypeTransformer().decode(value);

  static List<UserScreen> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserScreen>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserScreen.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserScreen] to String,
/// and [decode] dynamic data back to [UserScreen].
class UserScreenTypeTransformer {
  factory UserScreenTypeTransformer() => _instance ??= const UserScreenTypeTransformer._();

  const UserScreenTypeTransformer._();

  String encode(UserScreen data) => data.value;

  /// Decodes a [dynamic value][data] to a UserScreen.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserScreen? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'home': return UserScreen.home;
        case r'explore': return UserScreen.explore;
        case r'coupons': return UserScreen.coupons;
        case r'favorites': return UserScreen.favorites;
        case r'profile': return UserScreen.profile;
        case r'points': return UserScreen.points;
        case r'subscription': return UserScreen.subscription;
        case r'settings': return UserScreen.settings;
        case r'wheel': return UserScreen.wheel;
        case r'stores': return UserScreen.stores;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserScreenTypeTransformer] instance.
  static UserScreenTypeTransformer? _instance;
}

