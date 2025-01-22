//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserSubscriptionModel {
  /// Returns a new [UserSubscriptionModel] instance.
  UserSubscriptionModel({
    required this.userId,
    required this.stripeCustomerId,
    this.subscriptionId,
    this.subscriptionStatus = 'unpaid',
    this.currentPeriodStart,
    this.currentPeriodEnd,
    this.lastPayment,
    this.trialEnd,
    this.createdAt,
    this.updatedAt,
  });

  String userId;

  String stripeCustomerId;

  String? subscriptionId;

  String subscriptionStatus;

  DateTime? currentPeriodStart;

  DateTime? currentPeriodEnd;

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
  bool operator ==(Object other) => identical(this, other) || other is UserSubscriptionModel &&
    other.userId == userId &&
    other.stripeCustomerId == stripeCustomerId &&
    other.subscriptionId == subscriptionId &&
    other.subscriptionStatus == subscriptionStatus &&
    other.currentPeriodStart == currentPeriodStart &&
    other.currentPeriodEnd == currentPeriodEnd &&
    other.lastPayment == lastPayment &&
    other.trialEnd == trialEnd &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (stripeCustomerId.hashCode) +
    (subscriptionId == null ? 0 : subscriptionId!.hashCode) +
    (subscriptionStatus.hashCode) +
    (currentPeriodStart == null ? 0 : currentPeriodStart!.hashCode) +
    (currentPeriodEnd == null ? 0 : currentPeriodEnd!.hashCode) +
    (lastPayment == null ? 0 : lastPayment!.hashCode) +
    (trialEnd == null ? 0 : trialEnd!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'UserSubscriptionModel[userId=$userId, stripeCustomerId=$stripeCustomerId, subscriptionId=$subscriptionId, subscriptionStatus=$subscriptionStatus, currentPeriodStart=$currentPeriodStart, currentPeriodEnd=$currentPeriodEnd, lastPayment=$lastPayment, trialEnd=$trialEnd, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'stripe_customer_id'] = this.stripeCustomerId;
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

  /// Returns a new [UserSubscriptionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserSubscriptionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserSubscriptionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserSubscriptionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserSubscriptionModel(
        userId: mapValueOfType<String>(json, r'user_id')!,
        stripeCustomerId: mapValueOfType<String>(json, r'stripe_customer_id')!,
        subscriptionId: mapValueOfType<String>(json, r'subscription_id'),
        subscriptionStatus: mapValueOfType<String>(json, r'subscription_status') ?? 'unpaid',
        currentPeriodStart: mapDateTime(json, r'current_period_start', r''),
        currentPeriodEnd: mapDateTime(json, r'current_period_end', r''),
        lastPayment: mapDateTime(json, r'last_payment', r''),
        trialEnd: mapDateTime(json, r'trial_end', r''),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<UserSubscriptionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserSubscriptionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserSubscriptionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserSubscriptionModel> mapFromJson(dynamic json) {
    final map = <String, UserSubscriptionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserSubscriptionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserSubscriptionModel-objects as value to a dart map
  static Map<String, List<UserSubscriptionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserSubscriptionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserSubscriptionModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'stripe_customer_id',
  };
}

