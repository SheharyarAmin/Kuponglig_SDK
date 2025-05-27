//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScreenNotificationsResponse {
  /// Returns a new [ScreenNotificationsResponse] instance.
  ScreenNotificationsResponse({
    required this.entityId,
    this.screen,
    this.notifications = const [],
    this.lastUpdated,
    required this.hasNotifications,
    this.totalNotifications = 0,
  });

  /// User or vendor ID
  String entityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? screen;

  /// List of notifications
  List<ScreenNotificationItem> notifications;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdated;

  /// Whether notifications exist
  bool hasNotifications;

  /// Total notification count
  int totalNotifications;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScreenNotificationsResponse &&
    other.entityId == entityId &&
    other.screen == screen &&
    _deepEquality.equals(other.notifications, notifications) &&
    other.lastUpdated == lastUpdated &&
    other.hasNotifications == hasNotifications &&
    other.totalNotifications == totalNotifications;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityId.hashCode) +
    (screen == null ? 0 : screen!.hashCode) +
    (notifications.hashCode) +
    (lastUpdated == null ? 0 : lastUpdated!.hashCode) +
    (hasNotifications.hashCode) +
    (totalNotifications.hashCode);

  @override
  String toString() => 'ScreenNotificationsResponse[entityId=$entityId, screen=$screen, notifications=$notifications, lastUpdated=$lastUpdated, hasNotifications=$hasNotifications, totalNotifications=$totalNotifications]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entity_id'] = this.entityId;
    if (this.screen != null) {
      json[r'screen'] = this.screen;
    } else {
      json[r'screen'] = null;
    }
      json[r'notifications'] = this.notifications;
    if (this.lastUpdated != null) {
      json[r'last_updated'] = this.lastUpdated;
    } else {
      json[r'last_updated'] = null;
    }
      json[r'has_notifications'] = this.hasNotifications;
      json[r'total_notifications'] = this.totalNotifications;
    return json;
  }

  /// Returns a new [ScreenNotificationsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScreenNotificationsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScreenNotificationsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScreenNotificationsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScreenNotificationsResponse(
        entityId: mapValueOfType<String>(json, r'entity_id')!,
        screen: mapValueOfType<String>(json, r'screen'),
        notifications: ScreenNotificationItem.listFromJson(json[r'notifications']),
        lastUpdated: mapValueOfType<String>(json, r'last_updated'),
        hasNotifications: mapValueOfType<bool>(json, r'has_notifications')!,
        totalNotifications: mapValueOfType<int>(json, r'total_notifications') ?? 0,
      );
    }
    return null;
  }

  static List<ScreenNotificationsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScreenNotificationsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScreenNotificationsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScreenNotificationsResponse> mapFromJson(dynamic json) {
    final map = <String, ScreenNotificationsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScreenNotificationsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScreenNotificationsResponse-objects as value to a dart map
  static Map<String, List<ScreenNotificationsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScreenNotificationsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScreenNotificationsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entity_id',
    'notifications',
    'has_notifications',
  };
}

