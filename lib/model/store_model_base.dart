//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoreModelBase {
  /// Returns a new [StoreModelBase] instance.
  StoreModelBase({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.type,
    this.status = StoreStatus.ACTIVE,
    required this.vendorId,
    required this.logoUrl,
    required this.organizationNumber,
    required this.organizationBranchNumber,
    this.bannerUrl,
    required this.description,
    this.website,
    this.facebook,
    this.instagram,
    this.youtube,
    this.imagesURLs = const [],
    required this.coordinates,
  });

  String id;

  String name;

  String address;

  String phone;

  String email;

  StoreTypes type;

  StoreStatus status;

  String vendorId;

  String logoUrl;

  String organizationNumber;

  String organizationBranchNumber;

  String? bannerUrl;

  String description;

  String? website;

  String? facebook;

  String? instagram;

  String? youtube;

  List<String> imagesURLs;

  GeoPoint coordinates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoreModelBase &&
    other.id == id &&
    other.name == name &&
    other.address == address &&
    other.phone == phone &&
    other.email == email &&
    other.type == type &&
    other.status == status &&
    other.vendorId == vendorId &&
    other.logoUrl == logoUrl &&
    other.organizationNumber == organizationNumber &&
    other.organizationBranchNumber == organizationBranchNumber &&
    other.bannerUrl == bannerUrl &&
    other.description == description &&
    other.website == website &&
    other.facebook == facebook &&
    other.instagram == instagram &&
    other.youtube == youtube &&
    _deepEquality.equals(other.imagesURLs, imagesURLs) &&
    other.coordinates == coordinates;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (address.hashCode) +
    (phone.hashCode) +
    (email.hashCode) +
    (type.hashCode) +
    (status.hashCode) +
    (vendorId.hashCode) +
    (logoUrl.hashCode) +
    (organizationNumber.hashCode) +
    (organizationBranchNumber.hashCode) +
    (bannerUrl == null ? 0 : bannerUrl!.hashCode) +
    (description.hashCode) +
    (website == null ? 0 : website!.hashCode) +
    (facebook == null ? 0 : facebook!.hashCode) +
    (instagram == null ? 0 : instagram!.hashCode) +
    (youtube == null ? 0 : youtube!.hashCode) +
    (imagesURLs.hashCode) +
    (coordinates.hashCode);

  @override
  String toString() => 'StoreModelBase[id=$id, name=$name, address=$address, phone=$phone, email=$email, type=$type, status=$status, vendorId=$vendorId, logoUrl=$logoUrl, organizationNumber=$organizationNumber, organizationBranchNumber=$organizationBranchNumber, bannerUrl=$bannerUrl, description=$description, website=$website, facebook=$facebook, instagram=$instagram, youtube=$youtube, imagesURLs=$imagesURLs, coordinates=$coordinates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'address'] = this.address;
      json[r'phone'] = this.phone;
      json[r'email'] = this.email;
      json[r'type'] = this.type;
      json[r'status'] = this.status;
      json[r'vendorId'] = this.vendorId;
      json[r'logoUrl'] = this.logoUrl;
      json[r'organizationNumber'] = this.organizationNumber;
      json[r'organizationBranchNumber'] = this.organizationBranchNumber;
    if (this.bannerUrl != null) {
      json[r'bannerUrl'] = this.bannerUrl;
    } else {
      json[r'bannerUrl'] = null;
    }
      json[r'description'] = this.description;
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.facebook != null) {
      json[r'facebook'] = this.facebook;
    } else {
      json[r'facebook'] = null;
    }
    if (this.instagram != null) {
      json[r'instagram'] = this.instagram;
    } else {
      json[r'instagram'] = null;
    }
    if (this.youtube != null) {
      json[r'youtube'] = this.youtube;
    } else {
      json[r'youtube'] = null;
    }
      json[r'imagesURLs'] = this.imagesURLs;
      json[r'coordinates'] = this.coordinates;
    return json;
  }

  /// Returns a new [StoreModelBase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoreModelBase? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoreModelBase[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoreModelBase[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoreModelBase(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        address: mapValueOfType<String>(json, r'address')!,
        phone: mapValueOfType<String>(json, r'phone')!,
        email: mapValueOfType<String>(json, r'email')!,
        type: StoreTypes.fromJson(json[r'type'])!,
        status: StoreStatus.fromJson(json[r'status']) ?? StoreStatus.ACTIVE,
        vendorId: mapValueOfType<String>(json, r'vendorId')!,
        logoUrl: mapValueOfType<String>(json, r'logoUrl')!,
        organizationNumber: mapValueOfType<String>(json, r'organizationNumber')!,
        organizationBranchNumber: mapValueOfType<String>(json, r'organizationBranchNumber')!,
        bannerUrl: mapValueOfType<String>(json, r'bannerUrl'),
        description: mapValueOfType<String>(json, r'description')!,
        website: mapValueOfType<String>(json, r'website'),
        facebook: mapValueOfType<String>(json, r'facebook'),
        instagram: mapValueOfType<String>(json, r'instagram'),
        youtube: mapValueOfType<String>(json, r'youtube'),
        imagesURLs: json[r'imagesURLs'] is Iterable
            ? (json[r'imagesURLs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        coordinates: GeoPoint.fromJson(json[r'coordinates'])!,
      );
    }
    return null;
  }

  static List<StoreModelBase> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreModelBase>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreModelBase.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoreModelBase> mapFromJson(dynamic json) {
    final map = <String, StoreModelBase>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoreModelBase.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoreModelBase-objects as value to a dart map
  static Map<String, List<StoreModelBase>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoreModelBase>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoreModelBase.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'address',
    'phone',
    'email',
    'type',
    'vendorId',
    'logoUrl',
    'organizationNumber',
    'organizationBranchNumber',
    'description',
    'coordinates',
  };
}

