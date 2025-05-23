//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VendorModel {
  /// Returns a new [VendorModel] instance.
  VendorModel({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePicUrl,
    required this.username,
    required this.phone,
    this.phoneVerified = false,
    this.status = VendorStatus.ACTIVE,
    required this.idCardFrontUrl,
    required this.idCardBackUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String name;

  String email;

  String profilePicUrl;

  String username;

  String phone;

  bool phoneVerified;

  VendorStatus status;

  String idCardFrontUrl;

  String idCardBackUrl;

  String createdAt;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VendorModel &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.profilePicUrl == profilePicUrl &&
    other.username == username &&
    other.phone == phone &&
    other.phoneVerified == phoneVerified &&
    other.status == status &&
    other.idCardFrontUrl == idCardFrontUrl &&
    other.idCardBackUrl == idCardBackUrl &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (profilePicUrl.hashCode) +
    (username.hashCode) +
    (phone.hashCode) +
    (phoneVerified.hashCode) +
    (status.hashCode) +
    (idCardFrontUrl.hashCode) +
    (idCardBackUrl.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'VendorModel[id=$id, name=$name, email=$email, profilePicUrl=$profilePicUrl, username=$username, phone=$phone, phoneVerified=$phoneVerified, status=$status, idCardFrontUrl=$idCardFrontUrl, idCardBackUrl=$idCardBackUrl, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'email'] = this.email;
      json[r'profilePicUrl'] = this.profilePicUrl;
      json[r'username'] = this.username;
      json[r'phone'] = this.phone;
      json[r'phoneVerified'] = this.phoneVerified;
      json[r'status'] = this.status;
      json[r'idCardFrontUrl'] = this.idCardFrontUrl;
      json[r'idCardBackUrl'] = this.idCardBackUrl;
      json[r'createdAt'] = this.createdAt;
      json[r'updatedAt'] = this.updatedAt;
    return json;
  }

  /// Returns a new [VendorModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VendorModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VendorModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VendorModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VendorModel(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        profilePicUrl: mapValueOfType<String>(json, r'profilePicUrl')!,
        username: mapValueOfType<String>(json, r'username')!,
        phone: mapValueOfType<String>(json, r'phone')!,
        phoneVerified: mapValueOfType<bool>(json, r'phoneVerified') ?? false,
        status: VendorStatus.fromJson(json[r'status']) ?? VendorStatus.ACTIVE,
        idCardFrontUrl: mapValueOfType<String>(json, r'idCardFrontUrl')!,
        idCardBackUrl: mapValueOfType<String>(json, r'idCardBackUrl')!,
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        updatedAt: mapValueOfType<String>(json, r'updatedAt')!,
      );
    }
    return null;
  }

  static List<VendorModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VendorModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VendorModel> mapFromJson(dynamic json) {
    final map = <String, VendorModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VendorModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VendorModel-objects as value to a dart map
  static Map<String, List<VendorModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VendorModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VendorModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'email',
    'profilePicUrl',
    'username',
    'phone',
    'idCardFrontUrl',
    'idCardBackUrl',
    'createdAt',
    'updatedAt',
  };
}

