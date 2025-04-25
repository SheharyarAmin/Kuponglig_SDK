//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CouponDetails {
  /// Returns a new [CouponDetails] instance.
  CouponDetails({
    required this.id,
    required this.title,
    this.description,
    this.value,
    this.discountPercentage,
    this.category,
    this.imageUrl,
  });

  String id;

  String title;

  String? description;

  num? value;

  num? discountPercentage;

  String? category;

  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CouponDetails &&
    other.id == id &&
    other.title == title &&
    other.description == description &&
    other.value == value &&
    other.discountPercentage == discountPercentage &&
    other.category == category &&
    other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (discountPercentage == null ? 0 : discountPercentage!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode);

  @override
  String toString() => 'CouponDetails[id=$id, title=$title, description=$description, value=$value, discountPercentage=$discountPercentage, category=$category, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.discountPercentage != null) {
      json[r'discount_percentage'] = this.discountPercentage;
    } else {
      json[r'discount_percentage'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    return json;
  }

  /// Returns a new [CouponDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CouponDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CouponDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CouponDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CouponDetails(
        id: mapValueOfType<String>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description'),
        value: json[r'value'] == null
            ? null
            : num.parse('${json[r'value']}'),
        discountPercentage: json[r'discount_percentage'] == null
            ? null
            : num.parse('${json[r'discount_percentage']}'),
        category: mapValueOfType<String>(json, r'category'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
      );
    }
    return null;
  }

  static List<CouponDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CouponDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CouponDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CouponDetails> mapFromJson(dynamic json) {
    final map = <String, CouponDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CouponDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CouponDetails-objects as value to a dart map
  static Map<String, List<CouponDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CouponDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CouponDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
  };
}

