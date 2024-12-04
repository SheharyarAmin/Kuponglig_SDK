//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VendorStatus {
  /// Instantiate a new enum with the provided [value].
  const VendorStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNDERREVIEW = VendorStatus._(r'UNDERREVIEW');
  static const BLOCKED = VendorStatus._(r'BLOCKED');
  static const ACTIVE = VendorStatus._(r'ACTIVE');
  static const PENDING = VendorStatus._(r'PENDING');
  static const SUSPENDED = VendorStatus._(r'SUSPENDED');
  static const INACTIVE = VendorStatus._(r'INACTIVE');
  static const PENDING_VERIFICATION = VendorStatus._(r'PENDING_VERIFICATION');
  static const REJECTED = VendorStatus._(r'REJECTED');
  static const ARCHIVED = VendorStatus._(r'ARCHIVED');
  static const DELETED = VendorStatus._(r'DELETED');
  static const TEMPORARILY_DISABLED = VendorStatus._(r'TEMPORARILY_DISABLED');
  static const WAITING_APPROVAL = VendorStatus._(r'WAITING_APPROVAL');
  static const FLAGGED = VendorStatus._(r'FLAGGED');
  static const BANNED = VendorStatus._(r'BANNED');

  /// List of all possible values in this [enum][VendorStatus].
  static const values = <VendorStatus>[
    UNDERREVIEW,
    BLOCKED,
    ACTIVE,
    PENDING,
    SUSPENDED,
    INACTIVE,
    PENDING_VERIFICATION,
    REJECTED,
    ARCHIVED,
    DELETED,
    TEMPORARILY_DISABLED,
    WAITING_APPROVAL,
    FLAGGED,
    BANNED,
  ];

  static VendorStatus? fromJson(dynamic value) => VendorStatusTypeTransformer().decode(value);

  static List<VendorStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VendorStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VendorStatus] to String,
/// and [decode] dynamic data back to [VendorStatus].
class VendorStatusTypeTransformer {
  factory VendorStatusTypeTransformer() => _instance ??= const VendorStatusTypeTransformer._();

  const VendorStatusTypeTransformer._();

  String encode(VendorStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a VendorStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VendorStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNDERREVIEW': return VendorStatus.UNDERREVIEW;
        case r'BLOCKED': return VendorStatus.BLOCKED;
        case r'ACTIVE': return VendorStatus.ACTIVE;
        case r'PENDING': return VendorStatus.PENDING;
        case r'SUSPENDED': return VendorStatus.SUSPENDED;
        case r'INACTIVE': return VendorStatus.INACTIVE;
        case r'PENDING_VERIFICATION': return VendorStatus.PENDING_VERIFICATION;
        case r'REJECTED': return VendorStatus.REJECTED;
        case r'ARCHIVED': return VendorStatus.ARCHIVED;
        case r'DELETED': return VendorStatus.DELETED;
        case r'TEMPORARILY_DISABLED': return VendorStatus.TEMPORARILY_DISABLED;
        case r'WAITING_APPROVAL': return VendorStatus.WAITING_APPROVAL;
        case r'FLAGGED': return VendorStatus.FLAGGED;
        case r'BANNED': return VendorStatus.BANNED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VendorStatusTypeTransformer] instance.
  static VendorStatusTypeTransformer? _instance;
}

