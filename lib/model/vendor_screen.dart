//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VendorScreen {
  /// Instantiate a new enum with the provided [value].
  const VendorScreen._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dashboard = VendorScreen._(r'dashboard');
  static const customerEngagement = VendorScreen._(r'customer_engagement');
  static const coupons = VendorScreen._(r'coupons');
  static const stores = VendorScreen._(r'stores');
  static const subscription = VendorScreen._(r'subscription');
  static const settings = VendorScreen._(r'settings');
  static const analytics = VendorScreen._(r'analytics');

  /// List of all possible values in this [enum][VendorScreen].
  static const values = <VendorScreen>[
    dashboard,
    customerEngagement,
    coupons,
    stores,
    subscription,
    settings,
    analytics,
  ];

  static VendorScreen? fromJson(dynamic value) => VendorScreenTypeTransformer().decode(value);

  static List<VendorScreen> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VendorScreen>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorScreen.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VendorScreen] to String,
/// and [decode] dynamic data back to [VendorScreen].
class VendorScreenTypeTransformer {
  factory VendorScreenTypeTransformer() => _instance ??= const VendorScreenTypeTransformer._();

  const VendorScreenTypeTransformer._();

  String encode(VendorScreen data) => data.value;

  /// Decodes a [dynamic value][data] to a VendorScreen.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VendorScreen? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'dashboard': return VendorScreen.dashboard;
        case r'customer_engagement': return VendorScreen.customerEngagement;
        case r'coupons': return VendorScreen.coupons;
        case r'stores': return VendorScreen.stores;
        case r'subscription': return VendorScreen.subscription;
        case r'settings': return VendorScreen.settings;
        case r'analytics': return VendorScreen.analytics;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VendorScreenTypeTransformer] instance.
  static VendorScreenTypeTransformer? _instance;
}

