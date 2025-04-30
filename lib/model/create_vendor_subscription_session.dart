//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateVendorSubscriptionSession {
  /// Returns a new [CreateVendorSubscriptionSession] instance.
  CreateVendorSubscriptionSession({
    required this.vendorId,
    required this.email,
    required this.name,
    required this.priceId,
    this.setupIntentId,
  });

  String vendorId;

  String email;

  String name;

  String priceId;

  String? setupIntentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateVendorSubscriptionSession &&
    other.vendorId == vendorId &&
    other.email == email &&
    other.name == name &&
    other.priceId == priceId &&
    other.setupIntentId == setupIntentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vendorId.hashCode) +
    (email.hashCode) +
    (name.hashCode) +
    (priceId.hashCode) +
    (setupIntentId == null ? 0 : setupIntentId!.hashCode);

  @override
  String toString() => 'CreateVendorSubscriptionSession[vendorId=$vendorId, email=$email, name=$name, priceId=$priceId, setupIntentId=$setupIntentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'vendor_id'] = this.vendorId;
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

  /// Returns a new [CreateVendorSubscriptionSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateVendorSubscriptionSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateVendorSubscriptionSession[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateVendorSubscriptionSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateVendorSubscriptionSession(
        vendorId: mapValueOfType<String>(json, r'vendor_id')!,
        email: mapValueOfType<String>(json, r'email')!,
        name: mapValueOfType<String>(json, r'name')!,
        priceId: mapValueOfType<String>(json, r'price_id')!,
        setupIntentId: mapValueOfType<String>(json, r'setup_intent_id'),
      );
    }
    return null;
  }

  static List<CreateVendorSubscriptionSession> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateVendorSubscriptionSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateVendorSubscriptionSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateVendorSubscriptionSession> mapFromJson(dynamic json) {
    final map = <String, CreateVendorSubscriptionSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateVendorSubscriptionSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateVendorSubscriptionSession-objects as value to a dart map
  static Map<String, List<CreateVendorSubscriptionSession>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateVendorSubscriptionSession>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateVendorSubscriptionSession.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'vendor_id',
    'email',
    'name',
    'price_id',
  };
}

