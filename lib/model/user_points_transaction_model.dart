//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserPointsTransactionModel {
  /// Returns a new [UserPointsTransactionModel] instance.
  UserPointsTransactionModel({
    required this.id,
    required this.userId,
    required this.points,
    required this.reason,
    required this.createdAt,
  });

  String id;

  String userId;

  int points;

  String reason;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPointsTransactionModel &&
    other.id == id &&
    other.userId == userId &&
    other.points == points &&
    other.reason == reason &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (points.hashCode) +
    (reason.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'UserPointsTransactionModel[id=$id, userId=$userId, points=$points, reason=$reason, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'user_id'] = this.userId;
      json[r'points'] = this.points;
      json[r'reason'] = this.reason;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UserPointsTransactionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPointsTransactionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPointsTransactionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPointsTransactionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPointsTransactionModel(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        points: mapValueOfType<int>(json, r'points')!,
        reason: mapValueOfType<String>(json, r'reason')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<UserPointsTransactionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPointsTransactionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPointsTransactionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPointsTransactionModel> mapFromJson(dynamic json) {
    final map = <String, UserPointsTransactionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPointsTransactionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPointsTransactionModel-objects as value to a dart map
  static Map<String, List<UserPointsTransactionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPointsTransactionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserPointsTransactionModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'user_id',
    'points',
    'reason',
    'created_at',
  };
}

