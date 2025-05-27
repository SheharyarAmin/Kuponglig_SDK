//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Reason why a coupon is inactive
class InactiveReason {
  /// Instantiate a new enum with the provided [value].
  const InactiveReason._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PAYMENT_FAILED = InactiveReason._(r'PAYMENT_FAILED');
  static const SUBSCRIPTION_EXPIRED = InactiveReason._(r'SUBSCRIPTION_EXPIRED');
  static const VENDOR_LIMIT_EXCEEDED = InactiveReason._(r'VENDOR_LIMIT_EXCEEDED');
  static const MANUAL_DEACTIVATION = InactiveReason._(r'MANUAL_DEACTIVATION');
  static const STORE_INACTIVE = InactiveReason._(r'STORE_INACTIVE');
  static const VENDOR_INACTIVE = InactiveReason._(r'VENDOR_INACTIVE');
  static const OTHER = InactiveReason._(r'OTHER');

  /// List of all possible values in this [enum][InactiveReason].
  static const values = <InactiveReason>[
    PAYMENT_FAILED,
    SUBSCRIPTION_EXPIRED,
    VENDOR_LIMIT_EXCEEDED,
    MANUAL_DEACTIVATION,
    STORE_INACTIVE,
    VENDOR_INACTIVE,
    OTHER,
  ];

  static InactiveReason? fromJson(dynamic value) => InactiveReasonTypeTransformer().decode(value);

  static List<InactiveReason> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InactiveReason>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InactiveReason.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InactiveReason] to String,
/// and [decode] dynamic data back to [InactiveReason].
class InactiveReasonTypeTransformer {
  factory InactiveReasonTypeTransformer() => _instance ??= const InactiveReasonTypeTransformer._();

  const InactiveReasonTypeTransformer._();

  String encode(InactiveReason data) => data.value;

  /// Decodes a [dynamic value][data] to a InactiveReason.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InactiveReason? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PAYMENT_FAILED': return InactiveReason.PAYMENT_FAILED;
        case r'SUBSCRIPTION_EXPIRED': return InactiveReason.SUBSCRIPTION_EXPIRED;
        case r'VENDOR_LIMIT_EXCEEDED': return InactiveReason.VENDOR_LIMIT_EXCEEDED;
        case r'MANUAL_DEACTIVATION': return InactiveReason.MANUAL_DEACTIVATION;
        case r'STORE_INACTIVE': return InactiveReason.STORE_INACTIVE;
        case r'VENDOR_INACTIVE': return InactiveReason.VENDOR_INACTIVE;
        case r'OTHER': return InactiveReason.OTHER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InactiveReasonTypeTransformer] instance.
  static InactiveReasonTypeTransformer? _instance;
}

