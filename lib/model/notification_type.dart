//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// General notification types - not limited to subscription
class NotificationType {
  /// Instantiate a new enum with the provided [value].
  const NotificationType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const subscriptionInactive = NotificationType._(r'subscription_inactive');
  static const subscriptionExpiring = NotificationType._(r'subscription_expiring');
  static const subscriptionEnding = NotificationType._(r'subscription_ending');
  static const paymentFailed = NotificationType._(r'payment_failed');
  static const trialEnding = NotificationType._(r'trial_ending');
  static const resourceLimited = NotificationType._(r'resource_limited');
  static const featureLimited = NotificationType._(r'feature_limited');
  static const resourceQuotaExceeded = NotificationType._(r'resource_quota_exceeded');
  static const storeApprovalPending = NotificationType._(r'store_approval_pending');
  static const storeRejected = NotificationType._(r'store_rejected');
  static const couponExpiring = NotificationType._(r'coupon_expiring');
  static const reviewPending = NotificationType._(r'review_pending');
  static const maintenanceScheduled = NotificationType._(r'maintenance_scheduled');
  static const featureAnnouncement = NotificationType._(r'feature_announcement');
  static const systemUpdate = NotificationType._(r'system_update');
  static const performanceInsight = NotificationType._(r'performance_insight');
  static const engagementAlert = NotificationType._(r'engagement_alert');
  static const revenueMilestone = NotificationType._(r'revenue_milestone');

  /// List of all possible values in this [enum][NotificationType].
  static const values = <NotificationType>[
    subscriptionInactive,
    subscriptionExpiring,
    subscriptionEnding,
    paymentFailed,
    trialEnding,
    resourceLimited,
    featureLimited,
    resourceQuotaExceeded,
    storeApprovalPending,
    storeRejected,
    couponExpiring,
    reviewPending,
    maintenanceScheduled,
    featureAnnouncement,
    systemUpdate,
    performanceInsight,
    engagementAlert,
    revenueMilestone,
  ];

  static NotificationType? fromJson(dynamic value) => NotificationTypeTypeTransformer().decode(value);

  static List<NotificationType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationType] to String,
/// and [decode] dynamic data back to [NotificationType].
class NotificationTypeTypeTransformer {
  factory NotificationTypeTypeTransformer() => _instance ??= const NotificationTypeTypeTransformer._();

  const NotificationTypeTypeTransformer._();

  String encode(NotificationType data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'subscription_inactive': return NotificationType.subscriptionInactive;
        case r'subscription_expiring': return NotificationType.subscriptionExpiring;
        case r'subscription_ending': return NotificationType.subscriptionEnding;
        case r'payment_failed': return NotificationType.paymentFailed;
        case r'trial_ending': return NotificationType.trialEnding;
        case r'resource_limited': return NotificationType.resourceLimited;
        case r'feature_limited': return NotificationType.featureLimited;
        case r'resource_quota_exceeded': return NotificationType.resourceQuotaExceeded;
        case r'store_approval_pending': return NotificationType.storeApprovalPending;
        case r'store_rejected': return NotificationType.storeRejected;
        case r'coupon_expiring': return NotificationType.couponExpiring;
        case r'review_pending': return NotificationType.reviewPending;
        case r'maintenance_scheduled': return NotificationType.maintenanceScheduled;
        case r'feature_announcement': return NotificationType.featureAnnouncement;
        case r'system_update': return NotificationType.systemUpdate;
        case r'performance_insight': return NotificationType.performanceInsight;
        case r'engagement_alert': return NotificationType.engagementAlert;
        case r'revenue_milestone': return NotificationType.revenueMilestone;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTypeTypeTransformer] instance.
  static NotificationTypeTypeTransformer? _instance;
}

