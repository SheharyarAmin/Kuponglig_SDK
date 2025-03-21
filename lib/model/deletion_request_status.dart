//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DeletionRequestStatus {
  /// Instantiate a new enum with the provided [value].
  const DeletionRequestStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = DeletionRequestStatus._(r'PENDING');
  static const COMPLETED = DeletionRequestStatus._(r'COMPLETED');

  /// List of all possible values in this [enum][DeletionRequestStatus].
  static const values = <DeletionRequestStatus>[
    PENDING,
    COMPLETED,
  ];

  static DeletionRequestStatus? fromJson(dynamic value) => DeletionRequestStatusTypeTransformer().decode(value);

  static List<DeletionRequestStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeletionRequestStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeletionRequestStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeletionRequestStatus] to String,
/// and [decode] dynamic data back to [DeletionRequestStatus].
class DeletionRequestStatusTypeTransformer {
  factory DeletionRequestStatusTypeTransformer() => _instance ??= const DeletionRequestStatusTypeTransformer._();

  const DeletionRequestStatusTypeTransformer._();

  String encode(DeletionRequestStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a DeletionRequestStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeletionRequestStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return DeletionRequestStatus.PENDING;
        case r'COMPLETED': return DeletionRequestStatus.COMPLETED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeletionRequestStatusTypeTransformer] instance.
  static DeletionRequestStatusTypeTransformer? _instance;
}

