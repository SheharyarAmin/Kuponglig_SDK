//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyticsEvent {
  /// Returns a new [AnalyticsEvent] instance.
  AnalyticsEvent({
    required this.type,
    required this.timestamp,
    required this.userId,
    this.properties,
  });

  AnalyticsEventType type;

  DateTime timestamp;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyticsEvent &&
    other.type == type &&
    other.timestamp == timestamp &&
    other.userId == userId &&
    other.properties == properties;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (timestamp.hashCode) +
    (userId.hashCode) +
    (properties == null ? 0 : properties!.hashCode);

  @override
  String toString() => 'AnalyticsEvent[type=$type, timestamp=$timestamp, userId=$userId, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
      json[r'userId'] = this.userId;
    if (this.properties != null) {
      json[r'properties'] = this.properties;
    } else {
      json[r'properties'] = null;
    }
    return json;
  }

  /// Returns a new [AnalyticsEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyticsEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyticsEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyticsEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyticsEvent(
        type: AnalyticsEventType.fromJson(json[r'type'])!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        properties: mapValueOfType<Object>(json, r'properties'),
      );
    }
    return null;
  }

  static List<AnalyticsEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyticsEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyticsEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyticsEvent> mapFromJson(dynamic json) {
    final map = <String, AnalyticsEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyticsEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyticsEvent-objects as value to a dart map
  static Map<String, List<AnalyticsEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyticsEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyticsEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'timestamp',
    'userId',
  };
}

