//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DashboardRequest {
  /// Returns a new [DashboardRequest] instance.
  DashboardRequest({
    required this.vendorId,
    this.storeId,
    required this.timeFrame,
    this.includeExtendedMetrics = false,
    this.metricSort,
    this.dateRange = const {},
  });

  /// Unique identifier of the vendor
  String vendorId;

  String? storeId;

  TimeFrame timeFrame;

  /// Whether to include performance details section
  bool includeExtendedMetrics;

  MetricSortBy? metricSort;

  Map<String, DateTime>? dateRange;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DashboardRequest &&
          other.vendorId == vendorId &&
          other.storeId == storeId &&
          other.timeFrame == timeFrame &&
          other.includeExtendedMetrics == includeExtendedMetrics &&
          other.metricSort == metricSort &&
          _deepEquality.equals(other.dateRange, dateRange);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (vendorId.hashCode) +
      (storeId == null ? 0 : storeId!.hashCode) +
      (timeFrame.hashCode) +
      (includeExtendedMetrics.hashCode) +
      (metricSort == null ? 0 : metricSort!.hashCode) +
      (dateRange == null ? 0 : dateRange!.hashCode);

  @override
  String toString() =>
      'DashboardRequest[vendorId=$vendorId, storeId=$storeId, timeFrame=$timeFrame, includeExtendedMetrics=$includeExtendedMetrics, metricSort=$metricSort, dateRange=$dateRange]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'vendor_id'] = this.vendorId;
    if (this.storeId != null) {
      json[r'store_id'] = this.storeId;
    } else {
      json[r'store_id'] = null;
    }
    json[r'time_frame'] = this.timeFrame;
    json[r'include_extended_metrics'] = this.includeExtendedMetrics;
    if (this.metricSort != null) {
      json[r'metric_sort'] = this.metricSort;
    } else {
      json[r'metric_sort'] = null;
    }
    if (this.dateRange != null) {
      json[r'date_range'] = this.dateRange;
    } else {
      json[r'date_range'] = null;
    }
    return json;
  }

  /// Returns a new [DashboardRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DashboardRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DashboardRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DashboardRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DashboardRequest(
        vendorId: mapValueOfType<String>(json, r'vendor_id')!,
        storeId: mapValueOfType<String>(json, r'store_id'),
        timeFrame: TimeFrame.fromJson(json[r'time_frame'])!,
        includeExtendedMetrics:
            mapValueOfType<bool>(json, r'include_extended_metrics') ?? false,
        metricSort: MetricSortBy.fromJson(json[r'metric_sort']),
        dateRange: mapValueOfType<Map<String, DateTime>>(json, r'date_range'),
      );
    }
    return null;
  }

  static List<DashboardRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DashboardRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DashboardRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DashboardRequest> mapFromJson(dynamic json) {
    final map = <String, DashboardRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DashboardRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DashboardRequest-objects as value to a dart map
  static Map<String, List<DashboardRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DashboardRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DashboardRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'vendor_id',
    'time_frame',
  };
}
