//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationActionResponse {
  /// Returns a new [NotificationActionResponse] instance.
  NotificationActionResponse({
    required this.success,
    required this.message,
    required this.entityId,
    this.screen,
    this.notificationId,
  });

  /// Operation success status
  bool success;

  /// Response message
  String message;

  /// User or vendor ID
  String entityId;

  String? screen;

  String? notificationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationActionResponse &&
    other.success == success &&
    other.message == message &&
    other.entityId == entityId &&
    other.screen == screen &&
    other.notificationId == notificationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (message.hashCode) +
    (entityId.hashCode) +
    (screen == null ? 0 : screen!.hashCode) +
    (notificationId == null ? 0 : notificationId!.hashCode);

  @override
  String toString() => 'NotificationActionResponse[success=$success, message=$message, entityId=$entityId, screen=$screen, notificationId=$notificationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'message'] = this.message;
      json[r'entity_id'] = this.entityId;
    if (this.screen != null) {
      json[r'screen'] = this.screen;
    } else {
      json[r'screen'] = null;
    }
    if (this.notificationId != null) {
      json[r'notification_id'] = this.notificationId;
    } else {
      json[r'notification_id'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationActionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationActionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationActionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationActionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationActionResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        message: mapValueOfType<String>(json, r'message')!,
        entityId: mapValueOfType<String>(json, r'entity_id')!,
        screen: mapValueOfType<String>(json, r'screen'),
        notificationId: mapValueOfType<String>(json, r'notification_id'),
      );
    }
    return null;
  }

  static List<NotificationActionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationActionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationActionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationActionResponse> mapFromJson(dynamic json) {
    final map = <String, NotificationActionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationActionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationActionResponse-objects as value to a dart map
  static Map<String, List<NotificationActionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationActionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationActionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'message',
    'entity_id',
  };
}

