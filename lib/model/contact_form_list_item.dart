//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactFormListItem {
  /// Returns a new [ContactFormListItem] instance.
  ContactFormListItem({
    required this.id,
    required this.name,
    required this.email,
    required this.subject,
    required this.type,
    required this.createdAt,
    required this.status,
  });

  String id;

  String name;

  String email;

  String subject;

  ContactFormType type;

  DateTime createdAt;

  ContactFormStatus status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactFormListItem &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.subject == subject &&
    other.type == type &&
    other.createdAt == createdAt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (subject.hashCode) +
    (type.hashCode) +
    (createdAt.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'ContactFormListItem[id=$id, name=$name, email=$email, subject=$subject, type=$type, createdAt=$createdAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'email'] = this.email;
      json[r'subject'] = this.subject;
      json[r'type'] = this.type;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ContactFormListItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactFormListItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactFormListItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactFormListItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactFormListItem(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        type: ContactFormType.fromJson(json[r'type'])!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        status: ContactFormStatus.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<ContactFormListItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactFormListItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactFormListItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactFormListItem> mapFromJson(dynamic json) {
    final map = <String, ContactFormListItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactFormListItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactFormListItem-objects as value to a dart map
  static Map<String, List<ContactFormListItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactFormListItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactFormListItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'email',
    'subject',
    'type',
    'created_at',
    'status',
  };
}

