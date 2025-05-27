//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationRequest {
  /// Returns a new [NotificationRequest] instance.
  NotificationRequest({
    required this.notificationType,
    required this.severity,
    required this.title,
    required this.message,
    this.actions = const [],
    this.persistent = false,
    this.details,
  });

  /// Type of notification
  NotificationType notificationType;

  /// Severity level of notification
  NotificationSeverity severity;

  /// Notification title
  String title;

  /// Notification message
  String message;

  List<String>? actions;

  /// Whether notification persists
  bool persistent;

  Object? details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationRequest &&
    other.notificationType == notificationType &&
    other.severity == severity &&
    other.title == title &&
    other.message == message &&
    _deepEquality.equals(other.actions, actions) &&
    other.persistent == persistent &&
    other.details == details;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notificationType.hashCode) +
    (severity.hashCode) +
    (title.hashCode) +
    (message.hashCode) +
    (actions == null ? 0 : actions!.hashCode) +
    (persistent.hashCode) +
    (details == null ? 0 : details!.hashCode);

  @override
  String toString() => 'NotificationRequest[notificationType=$notificationType, severity=$severity, title=$title, message=$message, actions=$actions, persistent=$persistent, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'notification_type'] = this.notificationType;
      json[r'severity'] = this.severity;
      json[r'title'] = this.title;
      json[r'message'] = this.message;
    if (this.actions != null) {
      json[r'actions'] = this.actions;
    } else {
      json[r'actions'] = null;
    }
      json[r'persistent'] = this.persistent;
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationRequest(
        notificationType: NotificationType.fromJson(json[r'notification_type'])!,
        severity: NotificationSeverity.fromJson(json[r'severity'])!,
        title: mapValueOfType<String>(json, r'title')!,
        message: mapValueOfType<String>(json, r'message')!,
        actions: json[r'actions'] is Iterable
            ? (json[r'actions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        persistent: mapValueOfType<bool>(json, r'persistent') ?? false,
        details: mapValueOfType<Object>(json, r'details'),
      );
    }
    return null;
  }

  static List<NotificationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationRequest> mapFromJson(dynamic json) {
    final map = <String, NotificationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationRequest-objects as value to a dart map
  static Map<String, List<NotificationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'notification_type',
    'severity',
    'title',
    'message',
  };
}

