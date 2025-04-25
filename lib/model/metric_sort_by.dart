//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MetricSortBy {
  /// Instantiate a new enum with the provided [value].
  const MetricSortBy._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const redemptionRate = MetricSortBy._(r'redemption_rate');
  static const revenue = MetricSortBy._(r'revenue');
  static const views = MetricSortBy._(r'views');
  static const lessThanClassQuoteAppPeriodSchemasPeriodVendorDashboardStatsPeriodMetricSortByPeriodConfigQuoteGreaterThan = MetricSortBy._(r'<class \'app.schemas.vendor_dashboard_stats.MetricSortBy.Config\'>');

  /// List of all possible values in this [enum][MetricSortBy].
  static const values = <MetricSortBy>[
    redemptionRate,
    revenue,
    views,
    lessThanClassQuoteAppPeriodSchemasPeriodVendorDashboardStatsPeriodMetricSortByPeriodConfigQuoteGreaterThan,
  ];

  static MetricSortBy? fromJson(dynamic value) => MetricSortByTypeTransformer().decode(value);

  static List<MetricSortBy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MetricSortBy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetricSortBy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MetricSortBy] to String,
/// and [decode] dynamic data back to [MetricSortBy].
class MetricSortByTypeTransformer {
  factory MetricSortByTypeTransformer() => _instance ??= const MetricSortByTypeTransformer._();

  const MetricSortByTypeTransformer._();

  String encode(MetricSortBy data) => data.value;

  /// Decodes a [dynamic value][data] to a MetricSortBy.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MetricSortBy? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'redemption_rate': return MetricSortBy.redemptionRate;
        case r'revenue': return MetricSortBy.revenue;
        case r'views': return MetricSortBy.views;
        case r'<class \'app.schemas.vendor_dashboard_stats.MetricSortBy.Config\'>': return MetricSortBy.lessThanClassQuoteAppPeriodSchemasPeriodVendorDashboardStatsPeriodMetricSortByPeriodConfigQuoteGreaterThan;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MetricSortByTypeTransformer] instance.
  static MetricSortByTypeTransformer? _instance;
}

