//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationSendResponse {
  /// Returns a new [NotificationSendResponse] instance.
  NotificationSendResponse({
    required this.notificationId,
    this.successCount = 0,
    this.failureCount = 0,
    this.failedTokens = const [],
    this.error,
  });

  String notificationId;

  int successCount;

  int failureCount;

  List<String>? failedTokens;

  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationSendResponse &&
    other.notificationId == notificationId &&
    other.successCount == successCount &&
    other.failureCount == failureCount &&
    _deepEquality.equals(other.failedTokens, failedTokens) &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notificationId.hashCode) +
    (successCount.hashCode) +
    (failureCount.hashCode) +
    (failedTokens == null ? 0 : failedTokens!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'NotificationSendResponse[notificationId=$notificationId, successCount=$successCount, failureCount=$failureCount, failedTokens=$failedTokens, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'notification_id'] = this.notificationId;
      json[r'success_count'] = this.successCount;
      json[r'failure_count'] = this.failureCount;
    if (this.failedTokens != null) {
      json[r'failed_tokens'] = this.failedTokens;
    } else {
      json[r'failed_tokens'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationSendResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationSendResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationSendResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationSendResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationSendResponse(
        notificationId: mapValueOfType<String>(json, r'notification_id')!,
        successCount: mapValueOfType<int>(json, r'success_count') ?? 0,
        failureCount: mapValueOfType<int>(json, r'failure_count') ?? 0,
        failedTokens: json[r'failed_tokens'] is Iterable
            ? (json[r'failed_tokens'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<NotificationSendResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationSendResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationSendResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationSendResponse> mapFromJson(dynamic json) {
    final map = <String, NotificationSendResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationSendResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationSendResponse-objects as value to a dart map
  static Map<String, List<NotificationSendResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationSendResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationSendResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'notification_id',
  };
}

