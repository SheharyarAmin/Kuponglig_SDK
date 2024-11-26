//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpinningWheelReward {
  /// Returns a new [SpinningWheelReward] instance.
  SpinningWheelReward({
    required this.userId,
    required this.rewardType,
    required this.rewardValue,
  });

  String userId;

  RewardType rewardType;

  String rewardValue;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpinningWheelReward &&
          other.userId == userId &&
          other.rewardType == rewardType &&
          other.rewardValue == rewardValue;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userId.hashCode) + (rewardType.hashCode) + (rewardValue.hashCode);

  @override
  String toString() =>
      'SpinningWheelReward[userId=$userId, rewardType=$rewardType, rewardValue=$rewardValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'user_id'] = this.userId;
    json[r'reward_type'] = this.rewardType;
    json[r'reward_value'] = this.rewardValue;
    return json;
  }

  /// Returns a new [SpinningWheelReward] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpinningWheelReward? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SpinningWheelReward[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SpinningWheelReward[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpinningWheelReward(
        userId: mapValueOfType<String>(json, r'user_id')!,
        rewardType: RewardType.fromJson(json[r'reward_type'])!,
        rewardValue: mapValueOfType<String>(json, r'reward_value')!,
      );
    }
    return null;
  }

  static List<SpinningWheelReward> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SpinningWheelReward>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpinningWheelReward.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpinningWheelReward> mapFromJson(dynamic json) {
    final map = <String, SpinningWheelReward>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpinningWheelReward.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpinningWheelReward-objects as value to a dart map
  static Map<String, List<SpinningWheelReward>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SpinningWheelReward>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpinningWheelReward.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'reward_type',
    'reward_value',
  };
}
