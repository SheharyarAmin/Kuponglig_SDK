//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DynamicSubscriptionResponse {
  /// Returns a new [DynamicSubscriptionResponse] instance.
  DynamicSubscriptionResponse({
    required this.action,
    required this.url,
    required this.buttonText,
    required this.hasActiveSubscription,
    this.subscriptionStatus,
    this.message,
  });

  String action;

  String url;

  String buttonText;

  bool hasActiveSubscription;

  String? subscriptionStatus;

  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DynamicSubscriptionResponse &&
    other.action == action &&
    other.url == url &&
    other.buttonText == buttonText &&
    other.hasActiveSubscription == hasActiveSubscription &&
    other.subscriptionStatus == subscriptionStatus &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action.hashCode) +
    (url.hashCode) +
    (buttonText.hashCode) +
    (hasActiveSubscription.hashCode) +
    (subscriptionStatus == null ? 0 : subscriptionStatus!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'DynamicSubscriptionResponse[action=$action, url=$url, buttonText=$buttonText, hasActiveSubscription=$hasActiveSubscription, subscriptionStatus=$subscriptionStatus, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = this.action;
      json[r'url'] = this.url;
      json[r'button_text'] = this.buttonText;
      json[r'has_active_subscription'] = this.hasActiveSubscription;
    if (this.subscriptionStatus != null) {
      json[r'subscription_status'] = this.subscriptionStatus;
    } else {
      json[r'subscription_status'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [DynamicSubscriptionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DynamicSubscriptionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DynamicSubscriptionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DynamicSubscriptionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DynamicSubscriptionResponse(
        action: mapValueOfType<String>(json, r'action')!,
        url: mapValueOfType<String>(json, r'url')!,
        buttonText: mapValueOfType<String>(json, r'button_text')!,
        hasActiveSubscription: mapValueOfType<bool>(json, r'has_active_subscription')!,
        subscriptionStatus: mapValueOfType<String>(json, r'subscription_status'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<DynamicSubscriptionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DynamicSubscriptionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DynamicSubscriptionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DynamicSubscriptionResponse> mapFromJson(dynamic json) {
    final map = <String, DynamicSubscriptionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DynamicSubscriptionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DynamicSubscriptionResponse-objects as value to a dart map
  static Map<String, List<DynamicSubscriptionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DynamicSubscriptionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DynamicSubscriptionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
    'url',
    'button_text',
    'has_active_subscription',
  };
}

