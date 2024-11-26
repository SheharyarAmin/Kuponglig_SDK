//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpinWheelResponse {
  /// Returns a new [SpinWheelResponse] instance.
  SpinWheelResponse({
    this.rewardsList = const [],
    required this.canSpin,
    required this.spinsLeft,
  });

  List<SpinningWheelReward> rewardsList;

  bool canSpin;

  int spinsLeft;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpinWheelResponse &&
    _deepEquality.equals(other.rewardsList, rewardsList) &&
    other.canSpin == canSpin &&
    other.spinsLeft == spinsLeft;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rewardsList.hashCode) +
    (canSpin.hashCode) +
    (spinsLeft.hashCode);

  @override
  String toString() => 'SpinWheelResponse[rewardsList=$rewardsList, canSpin=$canSpin, spinsLeft=$spinsLeft]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rewardsList'] = this.rewardsList;
      json[r'canSpin'] = this.canSpin;
      json[r'spinsLeft'] = this.spinsLeft;
    return json;
  }

  /// Returns a new [SpinWheelResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpinWheelResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpinWheelResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpinWheelResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpinWheelResponse(
        rewardsList: SpinningWheelReward.listFromJson(json[r'rewardsList']),
        canSpin: mapValueOfType<bool>(json, r'canSpin')!,
        spinsLeft: mapValueOfType<int>(json, r'spinsLeft')!,
      );
    }
    return null;
  }

  static List<SpinWheelResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpinWheelResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpinWheelResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpinWheelResponse> mapFromJson(dynamic json) {
    final map = <String, SpinWheelResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpinWheelResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpinWheelResponse-objects as value to a dart map
  static Map<String, List<SpinWheelResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpinWheelResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpinWheelResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rewardsList',
    'canSpin',
    'spinsLeft',
  };
}

