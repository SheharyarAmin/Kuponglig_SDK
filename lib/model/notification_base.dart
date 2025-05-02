//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationBase {
  /// Returns a new [NotificationBase] instance.
  NotificationBase({
    required this.title,
    required this.body,
    required this.category,
    this.imageUrl,
    required this.targetType,
    this.actionData,
  });

  String title;

  String body;

  NotificationCategory category;

  String? imageUrl;

  NotificationTarget targetType;

  Object? actionData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationBase &&
    other.title == title &&
    other.body == body &&
    other.category == category &&
    other.imageUrl == imageUrl &&
    other.targetType == targetType &&
    other.actionData == actionData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title.hashCode) +
    (body.hashCode) +
    (category.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (targetType.hashCode) +
    (actionData == null ? 0 : actionData!.hashCode);

  @override
  String toString() => 'NotificationBase[title=$title, body=$body, category=$category, imageUrl=$imageUrl, targetType=$targetType, actionData=$actionData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = this.title;
      json[r'body'] = this.body;
      json[r'category'] = this.category;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
      json[r'target_type'] = this.targetType;
    if (this.actionData != null) {
      json[r'action_data'] = this.actionData;
    } else {
      json[r'action_data'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationBase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationBase? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationBase[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationBase[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationBase(
        title: mapValueOfType<String>(json, r'title')!,
        body: mapValueOfType<String>(json, r'body')!,
        category: NotificationCategory.fromJson(json[r'category'])!,
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        targetType: NotificationTarget.fromJson(json[r'target_type'])!,
        actionData: mapValueOfType<Object>(json, r'action_data'),
      );
    }
    return null;
  }

  static List<NotificationBase> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationBase>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationBase.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationBase> mapFromJson(dynamic json) {
    final map = <String, NotificationBase>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationBase.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationBase-objects as value to a dart map
  static Map<String, List<NotificationBase>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationBase>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationBase.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'body',
    'category',
    'target_type',
  };
}

