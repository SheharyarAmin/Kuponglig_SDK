//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoreModel {
  /// Returns a new [StoreModel] instance.
  StoreModel({
    required this.id,
    required this.name,
    required this.qrId,
    required this.address,
    required this.phone,
    required this.email,
    required this.type,
    this.status = StoreStatus.PENDING,
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
    required this.geohash,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String name;

  String qrId;

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

  String geohash;

  String createdAt;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoreModel &&
    other.id == id &&
    other.name == name &&
    other.qrId == qrId &&
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
    other.coordinates == coordinates &&
    other.geohash == geohash &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (qrId.hashCode) +
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
    (coordinates.hashCode) +
    (geohash.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'StoreModel[id=$id, name=$name, qrId=$qrId, address=$address, phone=$phone, email=$email, type=$type, status=$status, vendorId=$vendorId, logoUrl=$logoUrl, organizationNumber=$organizationNumber, organizationBranchNumber=$organizationBranchNumber, bannerUrl=$bannerUrl, description=$description, website=$website, facebook=$facebook, instagram=$instagram, youtube=$youtube, imagesURLs=$imagesURLs, coordinates=$coordinates, geohash=$geohash, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'qrId'] = this.qrId;
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
      json[r'geohash'] = this.geohash;
      json[r'createdAt'] = this.createdAt;
      json[r'updatedAt'] = this.updatedAt;
    return json;
  }

  /// Returns a new [StoreModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoreModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoreModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoreModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoreModel(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        qrId: mapValueOfType<String>(json, r'qrId')!,
        address: mapValueOfType<String>(json, r'address')!,
        phone: mapValueOfType<String>(json, r'phone')!,
        email: mapValueOfType<String>(json, r'email')!,
        type: StoreTypes.fromJson(json[r'type'])!,
        status: StoreStatus.fromJson(json[r'status']) ?? StoreStatus.PENDING,
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
        geohash: mapValueOfType<String>(json, r'geohash')!,
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        updatedAt: mapValueOfType<String>(json, r'updatedAt')!,
      );
    }
    return null;
  }

  static List<StoreModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoreModel> mapFromJson(dynamic json) {
    final map = <String, StoreModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoreModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoreModel-objects as value to a dart map
  static Map<String, List<StoreModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoreModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoreModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'qrId',
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
    'geohash',
    'createdAt',
    'updatedAt',
  };
}

