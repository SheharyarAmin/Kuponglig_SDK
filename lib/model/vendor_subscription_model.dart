//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VendorSubscriptionModel {
  /// Returns a new [VendorSubscriptionModel] instance.
  VendorSubscriptionModel({
    required this.vendorId,
    this.stripeCustomerId,
    this.subscriptionId,
    this.subscriptionStatus = SubscriptionStatus.unpaid,
    this.currentPeriodStart,
    this.currentPeriodEnd,
    this.entitlements = const [],
    this.lastPayment,
    this.trialEnd,
    this.createdAt,
    this.updatedAt,
  });

  String vendorId;

  String? stripeCustomerId;

  String? subscriptionId;

  SubscriptionStatus subscriptionStatus;

  DateTime? currentPeriodStart;

  DateTime? currentPeriodEnd;

  List<String>? entitlements;

  DateTime? lastPayment;

  DateTime? trialEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VendorSubscriptionModel &&
    other.vendorId == vendorId &&
    other.stripeCustomerId == stripeCustomerId &&
    other.subscriptionId == subscriptionId &&
    other.subscriptionStatus == subscriptionStatus &&
    other.currentPeriodStart == currentPeriodStart &&
    other.currentPeriodEnd == currentPeriodEnd &&
    _deepEquality.equals(other.entitlements, entitlements) &&
    other.lastPayment == lastPayment &&
    other.trialEnd == trialEnd &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vendorId.hashCode) +
    (stripeCustomerId == null ? 0 : stripeCustomerId!.hashCode) +
    (subscriptionId == null ? 0 : subscriptionId!.hashCode) +
    (subscriptionStatus.hashCode) +
    (currentPeriodStart == null ? 0 : currentPeriodStart!.hashCode) +
    (currentPeriodEnd == null ? 0 : currentPeriodEnd!.hashCode) +
    (entitlements == null ? 0 : entitlements!.hashCode) +
    (lastPayment == null ? 0 : lastPayment!.hashCode) +
    (trialEnd == null ? 0 : trialEnd!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'VendorSubscriptionModel[vendorId=$vendorId, stripeCustomerId=$stripeCustomerId, subscriptionId=$subscriptionId, subscriptionStatus=$subscriptionStatus, currentPeriodStart=$currentPeriodStart, currentPeriodEnd=$currentPeriodEnd, entitlements=$entitlements, lastPayment=$lastPayment, trialEnd=$trialEnd, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'vendor_id'] = this.vendorId;
    if (this.stripeCustomerId != null) {
      json[r'stripe_customer_id'] = this.stripeCustomerId;
    } else {
      json[r'stripe_customer_id'] = null;
    }
    if (this.subscriptionId != null) {
      json[r'subscription_id'] = this.subscriptionId;
    } else {
      json[r'subscription_id'] = null;
    }
      json[r'subscription_status'] = this.subscriptionStatus;
    if (this.currentPeriodStart != null) {
      json[r'current_period_start'] = this.currentPeriodStart!.toUtc().toIso8601String();
    } else {
      json[r'current_period_start'] = null;
    }
    if (this.currentPeriodEnd != null) {
      json[r'current_period_end'] = this.currentPeriodEnd!.toUtc().toIso8601String();
    } else {
      json[r'current_period_end'] = null;
    }
    if (this.entitlements != null) {
      json[r'entitlements'] = this.entitlements;
    } else {
      json[r'entitlements'] = null;
    }
    if (this.lastPayment != null) {
      json[r'last_payment'] = this.lastPayment!.toUtc().toIso8601String();
    } else {
      json[r'last_payment'] = null;
    }
    if (this.trialEnd != null) {
      json[r'trial_end'] = this.trialEnd!.toUtc().toIso8601String();
    } else {
      json[r'trial_end'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [VendorSubscriptionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VendorSubscriptionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VendorSubscriptionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VendorSubscriptionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VendorSubscriptionModel(
        vendorId: mapValueOfType<String>(json, r'vendor_id')!,
        stripeCustomerId: mapValueOfType<String>(json, r'stripe_customer_id'),
        subscriptionId: mapValueOfType<String>(json, r'subscription_id'),
        subscriptionStatus: SubscriptionStatus.fromJson(json[r'subscription_status']) ?? SubscriptionStatus.unpaid,
        currentPeriodStart: mapDateTime(json, r'current_period_start', r''),
        currentPeriodEnd: mapDateTime(json, r'current_period_end', r''),
        entitlements: json[r'entitlements'] is Iterable
            ? (json[r'entitlements'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        lastPayment: mapDateTime(json, r'last_payment', r''),
        trialEnd: mapDateTime(json, r'trial_end', r''),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<VendorSubscriptionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VendorSubscriptionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorSubscriptionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VendorSubscriptionModel> mapFromJson(dynamic json) {
    final map = <String, VendorSubscriptionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VendorSubscriptionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VendorSubscriptionModel-objects as value to a dart map
  static Map<String, List<VendorSubscriptionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VendorSubscriptionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VendorSubscriptionModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'vendor_id',
  };
}

