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
    required this.username,
    required this.name,
    required this.email,
    required this.photoUrl,
    this.status = UserStatus.ACTIVE,
    required this.age,
    required this.gender,
    required this.joiningReferralCode,
    required this.userReferralCode,
    this.interests = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String? username;

  String name;

  String email;

  String photoUrl;

  UserStatus status;

  int age;

  Gender gender;

  String? joiningReferralCode;

  String? userReferralCode;

  List<Interests> interests;

  String createdAt;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserModel &&
    other.id == id &&
    other.username == username &&
    other.name == name &&
    other.email == email &&
    other.photoUrl == photoUrl &&
    other.status == status &&
    other.age == age &&
    other.gender == gender &&
    other.joiningReferralCode == joiningReferralCode &&
    other.userReferralCode == userReferralCode &&
    _deepEquality.equals(other.interests, interests) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (photoUrl.hashCode) +
    (status.hashCode) +
    (age.hashCode) +
    (gender.hashCode) +
    (joiningReferralCode == null ? 0 : joiningReferralCode!.hashCode) +
    (userReferralCode == null ? 0 : userReferralCode!.hashCode) +
    (interests.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'UserModel[id=$id, username=$username, name=$name, email=$email, photoUrl=$photoUrl, status=$status, age=$age, gender=$gender, joiningReferralCode=$joiningReferralCode, userReferralCode=$userReferralCode, interests=$interests, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
      json[r'name'] = this.name;
      json[r'email'] = this.email;
      json[r'photoUrl'] = this.photoUrl;
      json[r'status'] = this.status;
      json[r'age'] = this.age;
      json[r'gender'] = this.gender;
    if (this.joiningReferralCode != null) {
      json[r'joiningReferralCode'] = this.joiningReferralCode;
    } else {
      json[r'joiningReferralCode'] = null;
    }
    if (this.userReferralCode != null) {
      json[r'userReferralCode'] = this.userReferralCode;
    } else {
      json[r'userReferralCode'] = null;
    }
      json[r'interests'] = this.interests;
      json[r'createdAt'] = this.createdAt;
      json[r'updatedAt'] = this.updatedAt;
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
        username: mapValueOfType<String>(json, r'username'),
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        photoUrl: mapValueOfType<String>(json, r'photoUrl')!,
        status: UserStatus.fromJson(json[r'status']) ?? UserStatus.ACTIVE,
        age: mapValueOfType<int>(json, r'age')!,
        gender: Gender.fromJson(json[r'gender'])!,
        joiningReferralCode: mapValueOfType<String>(json, r'joiningReferralCode'),
        userReferralCode: mapValueOfType<String>(json, r'userReferralCode'),
        interests: Interests.listFromJson(json[r'interests']),
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        updatedAt: mapValueOfType<String>(json, r'updatedAt')!,
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
    'username',
    'name',
    'email',
    'photoUrl',
    'age',
    'gender',
    'joiningReferralCode',
    'userReferralCode',
    'interests',
    'createdAt',
    'updatedAt',
  };
}

