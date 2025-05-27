//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubscriptionStatusResponse {
  /// Returns a new [SubscriptionStatusResponse] instance.
  SubscriptionStatusResponse({
    required this.entityId,
    required this.entityType,
    required this.subscriptionStatus,
    required this.isActive,
    this.currentPeriodEnd,
    this.entitlements = const [],
    this.cancelAtPeriodEnd = false,
    this.buttonText,
  });

  String entityId;

  EntityType entityType;

  SubscriptionStatus subscriptionStatus;

  bool isActive;

  DateTime? currentPeriodEnd;

  List<String> entitlements;

  bool cancelAtPeriodEnd;

  String? buttonText;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriptionStatusResponse &&
    other.entityId == entityId &&
    other.entityType == entityType &&
    other.subscriptionStatus == subscriptionStatus &&
    other.isActive == isActive &&
    other.currentPeriodEnd == currentPeriodEnd &&
    _deepEquality.equals(other.entitlements, entitlements) &&
    other.cancelAtPeriodEnd == cancelAtPeriodEnd &&
    other.buttonText == buttonText;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityId.hashCode) +
    (entityType.hashCode) +
    (subscriptionStatus.hashCode) +
    (isActive.hashCode) +
    (currentPeriodEnd == null ? 0 : currentPeriodEnd!.hashCode) +
    (entitlements.hashCode) +
    (cancelAtPeriodEnd.hashCode) +
    (buttonText == null ? 0 : buttonText!.hashCode);

  @override
  String toString() => 'SubscriptionStatusResponse[entityId=$entityId, entityType=$entityType, subscriptionStatus=$subscriptionStatus, isActive=$isActive, currentPeriodEnd=$currentPeriodEnd, entitlements=$entitlements, cancelAtPeriodEnd=$cancelAtPeriodEnd, buttonText=$buttonText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entity_id'] = this.entityId;
      json[r'entity_type'] = this.entityType;
      json[r'subscription_status'] = this.subscriptionStatus;
      json[r'is_active'] = this.isActive;
    if (this.currentPeriodEnd != null) {
      json[r'current_period_end'] = this.currentPeriodEnd!.toUtc().toIso8601String();
    } else {
      json[r'current_period_end'] = null;
    }
      json[r'entitlements'] = this.entitlements;
      json[r'cancel_at_period_end'] = this.cancelAtPeriodEnd;
    if (this.buttonText != null) {
      json[r'button_text'] = this.buttonText;
    } else {
      json[r'button_text'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriptionStatusResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriptionStatusResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriptionStatusResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriptionStatusResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriptionStatusResponse(
        entityId: mapValueOfType<String>(json, r'entity_id')!,
        entityType: EntityType.fromJson(json[r'entity_type'])!,
        subscriptionStatus: SubscriptionStatus.fromJson(json[r'subscription_status'])!,
        isActive: mapValueOfType<bool>(json, r'is_active')!,
        currentPeriodEnd: mapDateTime(json, r'current_period_end', r''),
        entitlements: json[r'entitlements'] is Iterable
            ? (json[r'entitlements'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cancelAtPeriodEnd: mapValueOfType<bool>(json, r'cancel_at_period_end') ?? false,
        buttonText: mapValueOfType<String>(json, r'button_text'),
      );
    }
    return null;
  }

  static List<SubscriptionStatusResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionStatusResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionStatusResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriptionStatusResponse> mapFromJson(dynamic json) {
    final map = <String, SubscriptionStatusResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriptionStatusResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriptionStatusResponse-objects as value to a dart map
  static Map<String, List<SubscriptionStatusResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriptionStatusResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriptionStatusResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entity_id',
    'entity_type',
    'subscription_status',
    'is_active',
  };
}

