//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserBroadcastNotificationRequest {
  /// Returns a new [UserBroadcastNotificationRequest] instance.
  UserBroadcastNotificationRequest({
    required this.notification,
    this.screen,
    this.userIds = const [],
  });

  /// Notification content
  NotificationRequest notification;

  UserScreen? screen;

  List<String>? userIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserBroadcastNotificationRequest &&
    other.notification == notification &&
    other.screen == screen &&
    _deepEquality.equals(other.userIds, userIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notification.hashCode) +
    (screen == null ? 0 : screen!.hashCode) +
    (userIds == null ? 0 : userIds!.hashCode);

  @override
  String toString() => 'UserBroadcastNotificationRequest[notification=$notification, screen=$screen, userIds=$userIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'notification'] = this.notification;
    if (this.screen != null) {
      json[r'screen'] = this.screen;
    } else {
      json[r'screen'] = null;
    }
    if (this.userIds != null) {
      json[r'user_ids'] = this.userIds;
    } else {
      json[r'user_ids'] = null;
    }
    return json;
  }

  /// Returns a new [UserBroadcastNotificationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserBroadcastNotificationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserBroadcastNotificationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserBroadcastNotificationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserBroadcastNotificationRequest(
        notification: NotificationRequest.fromJson(json[r'notification'])!,
        screen: UserScreen.fromJson(json[r'screen']),
        userIds: json[r'user_ids'] is Iterable
            ? (json[r'user_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<UserBroadcastNotificationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserBroadcastNotificationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserBroadcastNotificationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserBroadcastNotificationRequest> mapFromJson(dynamic json) {
    final map = <String, UserBroadcastNotificationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserBroadcastNotificationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserBroadcastNotificationRequest-objects as value to a dart map
  static Map<String, List<UserBroadcastNotificationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserBroadcastNotificationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserBroadcastNotificationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'notification',
  };
}

