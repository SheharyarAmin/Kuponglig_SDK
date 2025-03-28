//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserModel {
  /// Returns a new [UserModel] instance.
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.photoUrl,
    required this.age,
    required this.gender,
    this.joiningReferralCode,
    this.interests = const [],
    required this.username,
    this.status = UserStatus.ACTIVE,
    required this.userReferralCode,
  });

  String id;

  String name;

  String email;

  String? photoUrl;

  int age;

  Gender gender;

  String? joiningReferralCode;

  List<Interests> interests;

  String? username;

  UserStatus status;

  String userReferralCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserModel &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.photoUrl == photoUrl &&
    other.age == age &&
    other.gender == gender &&
    other.joiningReferralCode == joiningReferralCode &&
    _deepEquality.equals(other.interests, interests) &&
    other.username == username &&
    other.status == status &&
    other.userReferralCode == userReferralCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (photoUrl == null ? 0 : photoUrl!.hashCode) +
    (age.hashCode) +
    (gender.hashCode) +
    (joiningReferralCode == null ? 0 : joiningReferralCode!.hashCode) +
    (interests.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (status.hashCode) +
    (userReferralCode.hashCode);

  @override
  String toString() => 'UserModel[id=$id, name=$name, email=$email, photoUrl=$photoUrl, age=$age, gender=$gender, joiningReferralCode=$joiningReferralCode, interests=$interests, username=$username, status=$status, userReferralCode=$userReferralCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'email'] = this.email;
    if (this.photoUrl != null) {
      json[r'photoUrl'] = this.photoUrl;
    } else {
      json[r'photoUrl'] = null;
    }
      json[r'age'] = this.age;
      json[r'gender'] = this.gender;
    if (this.joiningReferralCode != null) {
      json[r'joiningReferralCode'] = this.joiningReferralCode;
    } else {
      json[r'joiningReferralCode'] = null;
    }
      json[r'interests'] = this.interests;
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
      json[r'status'] = this.status;
      json[r'userReferralCode'] = this.userReferralCode;
    return json;
  }

  /// Returns a new [UserModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserModel(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        photoUrl: mapValueOfType<String>(json, r'photoUrl'),
        age: mapValueOfType<int>(json, r'age')!,
        gender: Gender.fromJson(json[r'gender'])!,
        joiningReferralCode: mapValueOfType<String>(json, r'joiningReferralCode'),
        interests: Interests.listFromJson(json[r'interests']),
        username: mapValueOfType<String>(json, r'username'),
        status: UserStatus.fromJson(json[r'status']) ?? UserStatus.ACTIVE,
        userReferralCode: mapValueOfType<String>(json, r'userReferralCode')!,
      );
    }
    return null;
  }

  static List<UserModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserModel> mapFromJson(dynamic json) {
    final map = <String, UserModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserModel-objects as value to a dart map
  static Map<String, List<UserModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'email',
    'age',
    'gender',
    'interests',
    'username',
    'userReferralCode',
  };
}

