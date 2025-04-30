//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoreDetails {
  /// Returns a new [StoreDetails] instance.
  StoreDetails({
    required this.id,
    required this.name,
    this.address,
    this.city,
    this.state,
    this.postalCode,
    this.country,
    this.logoUrl,
  });

  String id;

  String name;

  String? address;

  String? city;

  String? state;

  String? postalCode;

  String? country;

  String? logoUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoreDetails &&
    other.id == id &&
    other.name == name &&
    other.address == address &&
    other.city == city &&
    other.state == state &&
    other.postalCode == postalCode &&
    other.country == country &&
    other.logoUrl == logoUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (postalCode == null ? 0 : postalCode!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode);

  @override
  String toString() => 'StoreDetails[id=$id, name=$name, address=$address, city=$city, state=$state, postalCode=$postalCode, country=$country, logoUrl=$logoUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.postalCode != null) {
      json[r'postal_code'] = this.postalCode;
    } else {
      json[r'postal_code'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.logoUrl != null) {
      json[r'logo_url'] = this.logoUrl;
    } else {
      json[r'logo_url'] = null;
    }
    return json;
  }

  /// Returns a new [StoreDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoreDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoreDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoreDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoreDetails(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        address: mapValueOfType<String>(json, r'address'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        postalCode: mapValueOfType<String>(json, r'postal_code'),
        country: mapValueOfType<String>(json, r'country'),
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
      );
    }
    return null;
  }

  static List<StoreDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoreDetails> mapFromJson(dynamic json) {
    final map = <String, StoreDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoreDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoreDetails-objects as value to a dart map
  static Map<String, List<StoreDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoreDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoreDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
  };
}

