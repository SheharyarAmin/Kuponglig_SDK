//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserNotification {
  /// Returns a new [UserNotification] instance.
  UserNotification({
    required this.id,
    required this.notificationId,
    required this.userId,
    required this.createdAt,
    this.readAt,
    this.isRead = false,
    required this.notificationData,
  });

  String id;

  String notificationId;

  String userId;

  DateTime createdAt;

  DateTime? readAt;

  bool isRead;

  NotificationBase notificationData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserNotification &&
    other.id == id &&
    other.notificationId == notificationId &&
    other.userId == userId &&
    other.createdAt == createdAt &&
    other.readAt == readAt &&
    other.isRead == isRead &&
    other.notificationData == notificationData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (notificationId.hashCode) +
    (userId.hashCode) +
    (createdAt.hashCode) +
    (readAt == null ? 0 : readAt!.hashCode) +
    (isRead.hashCode) +
    (notificationData.hashCode);

  @override
  String toString() => 'UserNotification[id=$id, notificationId=$notificationId, userId=$userId, createdAt=$createdAt, readAt=$readAt, isRead=$isRead, notificationData=$notificationData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'notification_id'] = this.notificationId;
      json[r'user_id'] = this.userId;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.readAt != null) {
      json[r'read_at'] = this.readAt!.toUtc().toIso8601String();
    } else {
      json[r'read_at'] = null;
    }
      json[r'is_read'] = this.isRead;
      json[r'notification_data'] = this.notificationData;
    return json;
  }

  /// Returns a new [UserNotification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserNotification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserNotification[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserNotification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserNotification(
        id: mapValueOfType<String>(json, r'id')!,
        notificationId: mapValueOfType<String>(json, r'notification_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        readAt: mapDateTime(json, r'read_at', r''),
        isRead: mapValueOfType<bool>(json, r'is_read') ?? false,
        notificationData: NotificationBase.fromJson(json[r'notification_data'])!,
      );
    }
    return null;
  }

  static List<UserNotification> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserNotification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserNotification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserNotification> mapFromJson(dynamic json) {
    final map = <String, UserNotification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserNotification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserNotification-objects as value to a dart map
  static Map<String, List<UserNotification>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserNotification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserNotification.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'notification_id',
    'user_id',
    'created_at',
    'notification_data',
  };
}

