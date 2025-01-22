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
    required this.name,
    required this.priceId,
    this.setupIntentId,
  });

  String userId;

  String email;

  String name;

  String priceId;

  String? setupIntentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUserSubscriptionSession &&
    other.userId == userId &&
    other.email == email &&
    other.name == name &&
    other.priceId == priceId &&
    other.setupIntentId == setupIntentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (email.hashCode) +
    (name.hashCode) +
    (priceId.hashCode) +
    (setupIntentId == null ? 0 : setupIntentId!.hashCode);

  @override
  String toString() => 'CreateUserSubscriptionSession[userId=$userId, email=$email, name=$name, priceId=$priceId, setupIntentId=$setupIntentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'email'] = this.email;
      json[r'name'] = this.name;
      json[r'price_id'] = this.priceId;
    if (this.setupIntentId != null) {
      json[r'setup_intent_id'] = this.setupIntentId;
    } else {
      json[r'setup_intent_id'] = null;
    }
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
        name: mapValueOfType<String>(json, r'name')!,
        priceId: mapValueOfType<String>(json, r'price_id')!,
        setupIntentId: mapValueOfType<String>(json, r'setup_intent_id'),
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
    'name',
    'price_id',
  };
}

