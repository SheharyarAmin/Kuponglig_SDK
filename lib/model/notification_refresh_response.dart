//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationRefreshResponse {
  /// Returns a new [NotificationRefreshResponse] instance.
  NotificationRefreshResponse({
    required this.success,
    required this.message,
    required this.entityId,
    this.lastUpdated,
  });

  /// Refresh success status
  bool success;

  /// Response message
  String message;

  /// User or vendor ID
  String entityId;

  String? lastUpdated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationRefreshResponse &&
    other.success == success &&
    other.message == message &&
    other.entityId == entityId &&
    other.lastUpdated == lastUpdated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (message.hashCode) +
    (entityId.hashCode) +
    (lastUpdated == null ? 0 : lastUpdated!.hashCode);

  @override
  String toString() => 'NotificationRefreshResponse[success=$success, message=$message, entityId=$entityId, lastUpdated=$lastUpdated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'message'] = this.message;
      json[r'entity_id'] = this.entityId;
    if (this.lastUpdated != null) {
      json[r'last_updated'] = this.lastUpdated;
    } else {
      json[r'last_updated'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationRefreshResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationRefreshResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationRefreshResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationRefreshResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationRefreshResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        message: mapValueOfType<String>(json, r'message')!,
        entityId: mapValueOfType<String>(json, r'entity_id')!,
        lastUpdated: mapValueOfType<String>(json, r'last_updated'),
      );
    }
    return null;
  }

  static List<NotificationRefreshResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationRefreshResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationRefreshResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationRefreshResponse> mapFromJson(dynamic json) {
    final map = <String, NotificationRefreshResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationRefreshResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationRefreshResponse-objects as value to a dart map
  static Map<String, List<NotificationRefreshResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationRefreshResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationRefreshResponse.listFromJson(entry.value, growable: growable,);
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

