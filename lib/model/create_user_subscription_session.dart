//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateUserSubscriptionSession {
  /// Returns a new [CreateUserSubscriptionSession] instance.
  CreateUserSubscriptionSession({
    required this.userId,
    required this.email,
    required this.priceId,
    required this.successUrl,
    required this.cancelUrl,
  });

  String userId;

  String email;

  String priceId;

  String successUrl;

  String cancelUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUserSubscriptionSession &&
    other.userId == userId &&
    other.email == email &&
    other.priceId == priceId &&
    other.successUrl == successUrl &&
    other.cancelUrl == cancelUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (email.hashCode) +
    (priceId.hashCode) +
    (successUrl.hashCode) +
    (cancelUrl.hashCode);

  @override
  String toString() => 'CreateUserSubscriptionSession[userId=$userId, email=$email, priceId=$priceId, successUrl=$successUrl, cancelUrl=$cancelUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'email'] = this.email;
      json[r'price_id'] = this.priceId;
      json[r'success_url'] = this.successUrl;
      json[r'cancel_url'] = this.cancelUrl;
    return json;
  }

  /// Returns a new [CreateUserSubscriptionSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUserSubscriptionSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateUserSubscriptionSession[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateUserSubscriptionSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateUserSubscriptionSession(
        userId: mapValueOfType<String>(json, r'user_id')!,
        email: mapValueOfType<String>(json, r'email')!,
        priceId: mapValueOfType<String>(json, r'price_id')!,
        successUrl: mapValueOfType<String>(json, r'success_url')!,
        cancelUrl: mapValueOfType<String>(json, r'cancel_url')!,
      );
    }
    return null;
  }

  static List<CreateUserSubscriptionSession> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUserSubscriptionSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUserSubscriptionSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUserSubscriptionSession> mapFromJson(dynamic json) {
    final map = <String, CreateUserSubscriptionSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUserSubscriptionSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUserSubscriptionSession-objects as value to a dart map
  static Map<String, List<CreateUserSubscriptionSession>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUserSubscriptionSession>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUserSubscriptionSession.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'email',
    'price_id',
    'success_url',
    'cancel_url',
  };
}

