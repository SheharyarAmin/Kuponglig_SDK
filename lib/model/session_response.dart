//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionResponse {
  /// Returns a new [SessionResponse] instance.
  SessionResponse({
    required this.customerid,
    required this.ephemeralKey,
    this.clientSecret = '',
    this.setupIntent = false,
    this.trial = false,
  });

  String customerid;

  String ephemeralKey;

  String clientSecret;

  bool setupIntent;

  bool trial;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionResponse &&
    other.customerid == customerid &&
    other.ephemeralKey == ephemeralKey &&
    other.clientSecret == clientSecret &&
    other.setupIntent == setupIntent &&
    other.trial == trial;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customerid.hashCode) +
    (ephemeralKey.hashCode) +
    (clientSecret.hashCode) +
    (setupIntent.hashCode) +
    (trial.hashCode);

  @override
  String toString() => 'SessionResponse[customerid=$customerid, ephemeralKey=$ephemeralKey, clientSecret=$clientSecret, setupIntent=$setupIntent, trial=$trial]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customerid'] = this.customerid;
      json[r'ephemeral_key'] = this.ephemeralKey;
      json[r'client_secret'] = this.clientSecret;
      json[r'setup_intent'] = this.setupIntent;
      json[r'trial'] = this.trial;
    return json;
  }

  /// Returns a new [SessionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionResponse(
        customerid: mapValueOfType<String>(json, r'customerid')!,
        ephemeralKey: mapValueOfType<String>(json, r'ephemeral_key')!,
        clientSecret: mapValueOfType<String>(json, r'client_secret') ?? '',
        setupIntent: mapValueOfType<bool>(json, r'setup_intent') ?? false,
        trial: mapValueOfType<bool>(json, r'trial') ?? false,
      );
    }
    return null;
  }

  static List<SessionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionResponse> mapFromJson(dynamic json) {
    final map = <String, SessionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionResponse-objects as value to a dart map
  static Map<String, List<SessionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'customerid',
    'ephemeral_key',
  };
}

