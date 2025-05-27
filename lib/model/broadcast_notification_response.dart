//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BroadcastNotificationResponse {
  /// Returns a new [BroadcastNotificationResponse] instance.
  BroadcastNotificationResponse({
    required this.success,
    required this.message,
    required this.notificationId,
    required this.screen,
    required this.successCount,
    this.targetCount,
  });

  /// Broadcast success status
  bool success;

  /// Response message
  String message;

  /// Notification identifier
  String notificationId;

  /// Target screen
  String screen;

  /// Number of successful deliveries
  int successCount;

  int? targetCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BroadcastNotificationResponse &&
    other.success == success &&
    other.message == message &&
    other.notificationId == notificationId &&
    other.screen == screen &&
    other.successCount == successCount &&
    other.targetCount == targetCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (message.hashCode) +
    (notificationId.hashCode) +
    (screen.hashCode) +
    (successCount.hashCode) +
    (targetCount == null ? 0 : targetCount!.hashCode);

  @override
  String toString() => 'BroadcastNotificationResponse[success=$success, message=$message, notificationId=$notificationId, screen=$screen, successCount=$successCount, targetCount=$targetCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'message'] = this.message;
      json[r'notification_id'] = this.notificationId;
      json[r'screen'] = this.screen;
      json[r'success_count'] = this.successCount;
    if (this.targetCount != null) {
      json[r'target_count'] = this.targetCount;
    } else {
      json[r'target_count'] = null;
    }
    return json;
  }

  /// Returns a new [BroadcastNotificationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BroadcastNotificationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BroadcastNotificationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BroadcastNotificationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BroadcastNotificationResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        message: mapValueOfType<String>(json, r'message')!,
        notificationId: mapValueOfType<String>(json, r'notification_id')!,
        screen: mapValueOfType<String>(json, r'screen')!,
        successCount: mapValueOfType<int>(json, r'success_count')!,
        targetCount: mapValueOfType<int>(json, r'target_count'),
      );
    }
    return null;
  }

  static List<BroadcastNotificationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BroadcastNotificationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BroadcastNotificationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BroadcastNotificationResponse> mapFromJson(dynamic json) {
    final map = <String, BroadcastNotificationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BroadcastNotificationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BroadcastNotificationResponse-objects as value to a dart map
  static Map<String, List<BroadcastNotificationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BroadcastNotificationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BroadcastNotificationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'message',
    'notification_id',
    'screen',
    'success_count',
  };
}

