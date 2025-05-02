//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FCMTokenCreate {
  /// Returns a new [FCMTokenCreate] instance.
  FCMTokenCreate({
    required this.token,
    required this.userType,
    required this.deviceType,
    this.deviceName,
    this.lastUsedAt,
    required this.userId,
  });

  String token;

  UserType userType;

  DeviceType deviceType;

  String? deviceName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastUsedAt;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FCMTokenCreate &&
    other.token == token &&
    other.userType == userType &&
    other.deviceType == deviceType &&
    other.deviceName == deviceName &&
    other.lastUsedAt == lastUsedAt &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (userType.hashCode) +
    (deviceType.hashCode) +
    (deviceName == null ? 0 : deviceName!.hashCode) +
    (lastUsedAt == null ? 0 : lastUsedAt!.hashCode) +
    (userId.hashCode);

  @override
  String toString() => 'FCMTokenCreate[token=$token, userType=$userType, deviceType=$deviceType, deviceName=$deviceName, lastUsedAt=$lastUsedAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
      json[r'user_type'] = this.userType;
      json[r'device_type'] = this.deviceType;
    if (this.deviceName != null) {
      json[r'device_name'] = this.deviceName;
    } else {
      json[r'device_name'] = null;
    }
    if (this.lastUsedAt != null) {
      json[r'last_used_at'] = this.lastUsedAt!.toUtc().toIso8601String();
    } else {
      json[r'last_used_at'] = null;
    }
      json[r'user_id'] = this.userId;
    return json;
  }

  /// Returns a new [FCMTokenCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FCMTokenCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FCMTokenCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FCMTokenCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FCMTokenCreate(
        token: mapValueOfType<String>(json, r'token')!,
        userType: UserType.fromJson(json[r'user_type'])!,
        deviceType: DeviceType.fromJson(json[r'device_type'])!,
        deviceName: mapValueOfType<String>(json, r'device_name'),
        lastUsedAt: mapDateTime(json, r'last_used_at', r''),
        userId: mapValueOfType<String>(json, r'user_id')!,
      );
    }
    return null;
  }

  static List<FCMTokenCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FCMTokenCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FCMTokenCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FCMTokenCreate> mapFromJson(dynamic json) {
    final map = <String, FCMTokenCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FCMTokenCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FCMTokenCreate-objects as value to a dart map
  static Map<String, List<FCMTokenCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FCMTokenCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FCMTokenCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
    'user_type',
    'device_type',
    'user_id',
  };
}

