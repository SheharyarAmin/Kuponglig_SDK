//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScreenNotificationItem {
  /// Returns a new [ScreenNotificationItem] instance.
  ScreenNotificationItem({
    required this.id,
    required this.type,
    required this.severity,
    required this.title,
    required this.message,
    this.actions = const [],
    this.persistent = false,
    this.details,
    required this.createdAt,
    this.expiresAt,
    this.screen,
  });

  /// Unique notification identifier
  String id;

  /// Notification type
  String type;

  /// Notification severity level
  String severity;

  /// Notification title
  String title;

  /// Notification message content
  String message;

  /// Available actions
  List<String> actions;

  /// Whether notification persists
  bool persistent;

  /// Additional details
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? details;

  /// Creation timestamp
  String createdAt;

  String? expiresAt;

  String? screen;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScreenNotificationItem &&
    other.id == id &&
    other.type == type &&
    other.severity == severity &&
    other.title == title &&
    other.message == message &&
    _deepEquality.equals(other.actions, actions) &&
    other.persistent == persistent &&
    other.details == details &&
    other.createdAt == createdAt &&
    other.expiresAt == expiresAt &&
    other.screen == screen;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (severity.hashCode) +
    (title.hashCode) +
    (message.hashCode) +
    (actions.hashCode) +
    (persistent.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (createdAt.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (screen == null ? 0 : screen!.hashCode);

  @override
  String toString() => 'ScreenNotificationItem[id=$id, type=$type, severity=$severity, title=$title, message=$message, actions=$actions, persistent=$persistent, details=$details, createdAt=$createdAt, expiresAt=$expiresAt, screen=$screen]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'severity'] = this.severity;
      json[r'title'] = this.title;
      json[r'message'] = this.message;
      json[r'actions'] = this.actions;
      json[r'persistent'] = this.persistent;
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
      json[r'created_at'] = this.createdAt;
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt;
    } else {
      json[r'expires_at'] = null;
    }
    if (this.screen != null) {
      json[r'screen'] = this.screen;
    } else {
      json[r'screen'] = null;
    }
    return json;
  }

  /// Returns a new [ScreenNotificationItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScreenNotificationItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScreenNotificationItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScreenNotificationItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScreenNotificationItem(
        id: mapValueOfType<String>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        severity: mapValueOfType<String>(json, r'severity')!,
        title: mapValueOfType<String>(json, r'title')!,
        message: mapValueOfType<String>(json, r'message')!,
        actions: json[r'actions'] is Iterable
            ? (json[r'actions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        persistent: mapValueOfType<bool>(json, r'persistent') ?? false,
        details: mapValueOfType<Object>(json, r'details'),
        createdAt: mapValueOfType<String>(json, r'created_at')!,
        expiresAt: mapValueOfType<String>(json, r'expires_at'),
        screen: mapValueOfType<String>(json, r'screen'),
      );
    }
    return null;
  }

  static List<ScreenNotificationItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScreenNotificationItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScreenNotificationItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScreenNotificationItem> mapFromJson(dynamic json) {
    final map = <String, ScreenNotificationItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScreenNotificationItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScreenNotificationItem-objects as value to a dart map
  static Map<String, List<ScreenNotificationItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScreenNotificationItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScreenNotificationItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'severity',
    'title',
    'message',
    'created_at',
  };
}

