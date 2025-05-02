//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationDB {
  /// Returns a new [NotificationDB] instance.
  NotificationDB({
    required this.title,
    required this.body,
    required this.category,
    this.imageUrl,
    required this.targetType,
    this.actionData,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.scheduledFor,
    this.sentAt,
    this.status = NotificationStatus.pending,
    this.recipientIds = const [],
    this.sentToCount = 0,
    this.readByCount = 0,
  });

  String title;

  String body;

  NotificationCategory category;

  String? imageUrl;

  NotificationTarget targetType;

  Object? actionData;

  String id;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? scheduledFor;

  DateTime? sentAt;

  NotificationStatus status;

  List<String>? recipientIds;

  int sentToCount;

  int readByCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationDB &&
    other.title == title &&
    other.body == body &&
    other.category == category &&
    other.imageUrl == imageUrl &&
    other.targetType == targetType &&
    other.actionData == actionData &&
    other.id == id &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.scheduledFor == scheduledFor &&
    other.sentAt == sentAt &&
    other.status == status &&
    _deepEquality.equals(other.recipientIds, recipientIds) &&
    other.sentToCount == sentToCount &&
    other.readByCount == readByCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title.hashCode) +
    (body.hashCode) +
    (category.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (targetType.hashCode) +
    (actionData == null ? 0 : actionData!.hashCode) +
    (id.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (scheduledFor == null ? 0 : scheduledFor!.hashCode) +
    (sentAt == null ? 0 : sentAt!.hashCode) +
    (status.hashCode) +
    (recipientIds == null ? 0 : recipientIds!.hashCode) +
    (sentToCount.hashCode) +
    (readByCount.hashCode);

  @override
  String toString() => 'NotificationDB[title=$title, body=$body, category=$category, imageUrl=$imageUrl, targetType=$targetType, actionData=$actionData, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, scheduledFor=$scheduledFor, sentAt=$sentAt, status=$status, recipientIds=$recipientIds, sentToCount=$sentToCount, readByCount=$readByCount]';

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
      json[r'id'] = this.id;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    if (this.scheduledFor != null) {
      json[r'scheduled_for'] = this.scheduledFor!.toUtc().toIso8601String();
    } else {
      json[r'scheduled_for'] = null;
    }
    if (this.sentAt != null) {
      json[r'sent_at'] = this.sentAt!.toUtc().toIso8601String();
    } else {
      json[r'sent_at'] = null;
    }
      json[r'status'] = this.status;
    if (this.recipientIds != null) {
      json[r'recipient_ids'] = this.recipientIds;
    } else {
      json[r'recipient_ids'] = null;
    }
      json[r'sent_to_count'] = this.sentToCount;
      json[r'read_by_count'] = this.readByCount;
    return json;
  }

  /// Returns a new [NotificationDB] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationDB? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationDB[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationDB[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationDB(
        title: mapValueOfType<String>(json, r'title')!,
        body: mapValueOfType<String>(json, r'body')!,
        category: NotificationCategory.fromJson(json[r'category'])!,
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        targetType: NotificationTarget.fromJson(json[r'target_type'])!,
        actionData: mapValueOfType<Object>(json, r'action_data'),
        id: mapValueOfType<String>(json, r'id')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        scheduledFor: mapDateTime(json, r'scheduled_for', r''),
        sentAt: mapDateTime(json, r'sent_at', r''),
        status: NotificationStatus.fromJson(json[r'status']) ?? NotificationStatus.pending,
        recipientIds: json[r'recipient_ids'] is Iterable
            ? (json[r'recipient_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sentToCount: mapValueOfType<int>(json, r'sent_to_count') ?? 0,
        readByCount: mapValueOfType<int>(json, r'read_by_count') ?? 0,
      );
    }
    return null;
  }

  static List<NotificationDB> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationDB>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationDB.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationDB> mapFromJson(dynamic json) {
    final map = <String, NotificationDB>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationDB.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationDB-objects as value to a dart map
  static Map<String, List<NotificationDB>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationDB>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationDB.listFromJson(entry.value, growable: growable,);
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
    'id',
    'created_at',
    'updated_at',
  };
}

