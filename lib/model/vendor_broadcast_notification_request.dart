//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VendorBroadcastNotificationRequest {
  /// Returns a new [VendorBroadcastNotificationRequest] instance.
  VendorBroadcastNotificationRequest({
    required this.notification,
    this.screen,
    this.vendorIds = const [],
  });

  /// Notification content
  NotificationRequest notification;

  VendorScreen? screen;

  List<String>? vendorIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VendorBroadcastNotificationRequest &&
    other.notification == notification &&
    other.screen == screen &&
    _deepEquality.equals(other.vendorIds, vendorIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notification.hashCode) +
    (screen == null ? 0 : screen!.hashCode) +
    (vendorIds == null ? 0 : vendorIds!.hashCode);

  @override
  String toString() => 'VendorBroadcastNotificationRequest[notification=$notification, screen=$screen, vendorIds=$vendorIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'notification'] = this.notification;
    if (this.screen != null) {
      json[r'screen'] = this.screen;
    } else {
      json[r'screen'] = null;
    }
    if (this.vendorIds != null) {
      json[r'vendor_ids'] = this.vendorIds;
    } else {
      json[r'vendor_ids'] = null;
    }
    return json;
  }

  /// Returns a new [VendorBroadcastNotificationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VendorBroadcastNotificationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VendorBroadcastNotificationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VendorBroadcastNotificationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VendorBroadcastNotificationRequest(
        notification: NotificationRequest.fromJson(json[r'notification'])!,
        screen: VendorScreen.fromJson(json[r'screen']),
        vendorIds: json[r'vendor_ids'] is Iterable
            ? (json[r'vendor_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<VendorBroadcastNotificationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VendorBroadcastNotificationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorBroadcastNotificationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VendorBroadcastNotificationRequest> mapFromJson(dynamic json) {
    final map = <String, VendorBroadcastNotificationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VendorBroadcastNotificationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VendorBroadcastNotificationRequest-objects as value to a dart map
  static Map<String, List<VendorBroadcastNotificationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VendorBroadcastNotificationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VendorBroadcastNotificationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'notification',
  };
}

