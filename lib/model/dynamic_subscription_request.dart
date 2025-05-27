//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DynamicSubscriptionRequest {
  /// Returns a new [DynamicSubscriptionRequest] instance.
  DynamicSubscriptionRequest({
    required this.entityType,
    required this.entityId,
    required this.email,
    required this.name,
    required this.priceId,
    required this.successUrl,
    required this.cancelUrl,
    this.returnUrl,
  });

  EntityType entityType;

  String entityId;

  String email;

  String name;

  String priceId;

  String successUrl;

  String cancelUrl;

  String? returnUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DynamicSubscriptionRequest &&
    other.entityType == entityType &&
    other.entityId == entityId &&
    other.email == email &&
    other.name == name &&
    other.priceId == priceId &&
    other.successUrl == successUrl &&
    other.cancelUrl == cancelUrl &&
    other.returnUrl == returnUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityType.hashCode) +
    (entityId.hashCode) +
    (email.hashCode) +
    (name.hashCode) +
    (priceId.hashCode) +
    (successUrl.hashCode) +
    (cancelUrl.hashCode) +
    (returnUrl == null ? 0 : returnUrl!.hashCode);

  @override
  String toString() => 'DynamicSubscriptionRequest[entityType=$entityType, entityId=$entityId, email=$email, name=$name, priceId=$priceId, successUrl=$successUrl, cancelUrl=$cancelUrl, returnUrl=$returnUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entity_type'] = this.entityType;
      json[r'entity_id'] = this.entityId;
      json[r'email'] = this.email;
      json[r'name'] = this.name;
      json[r'price_id'] = this.priceId;
      json[r'success_url'] = this.successUrl;
      json[r'cancel_url'] = this.cancelUrl;
    if (this.returnUrl != null) {
      json[r'return_url'] = this.returnUrl;
    } else {
      json[r'return_url'] = null;
    }
    return json;
  }

  /// Returns a new [DynamicSubscriptionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DynamicSubscriptionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DynamicSubscriptionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DynamicSubscriptionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DynamicSubscriptionRequest(
        entityType: EntityType.fromJson(json[r'entity_type'])!,
        entityId: mapValueOfType<String>(json, r'entity_id')!,
        email: mapValueOfType<String>(json, r'email')!,
        name: mapValueOfType<String>(json, r'name')!,
        priceId: mapValueOfType<String>(json, r'price_id')!,
        successUrl: mapValueOfType<String>(json, r'success_url')!,
        cancelUrl: mapValueOfType<String>(json, r'cancel_url')!,
        returnUrl: mapValueOfType<String>(json, r'return_url'),
      );
    }
    return null;
  }

  static List<DynamicSubscriptionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DynamicSubscriptionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DynamicSubscriptionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DynamicSubscriptionRequest> mapFromJson(dynamic json) {
    final map = <String, DynamicSubscriptionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DynamicSubscriptionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DynamicSubscriptionRequest-objects as value to a dart map
  static Map<String, List<DynamicSubscriptionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DynamicSubscriptionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DynamicSubscriptionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entity_type',
    'entity_id',
    'email',
    'name',
    'price_id',
    'success_url',
    'cancel_url',
  };
}

