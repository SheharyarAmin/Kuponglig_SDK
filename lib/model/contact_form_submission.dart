//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactFormSubmission {
  /// Returns a new [ContactFormSubmission] instance.
  ContactFormSubmission({
    this.id,
    required this.name,
    required this.email,
    required this.subject,
    required this.message,
    required this.type,
    this.userId,
    this.vendorId,
    this.createdAt,
    this.status = ContactFormStatus.OPEN,
  });

  String? id;

  String name;

  String email;

  String subject;

  String message;

  ContactFormType type;

  String? userId;

  String? vendorId;

  DateTime? createdAt;

  ContactFormStatus status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactFormSubmission &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.subject == subject &&
    other.message == message &&
    other.type == type &&
    other.userId == userId &&
    other.vendorId == vendorId &&
    other.createdAt == createdAt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (subject.hashCode) +
    (message.hashCode) +
    (type.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (vendorId == null ? 0 : vendorId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'ContactFormSubmission[id=$id, name=$name, email=$email, subject=$subject, message=$message, type=$type, userId=$userId, vendorId=$vendorId, createdAt=$createdAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'name'] = this.name;
      json[r'email'] = this.email;
      json[r'subject'] = this.subject;
      json[r'message'] = this.message;
      json[r'type'] = this.type;
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.vendorId != null) {
      json[r'vendor_id'] = this.vendorId;
    } else {
      json[r'vendor_id'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ContactFormSubmission] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactFormSubmission? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactFormSubmission[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactFormSubmission[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactFormSubmission(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        message: mapValueOfType<String>(json, r'message')!,
        type: ContactFormType.fromJson(json[r'type'])!,
        userId: mapValueOfType<String>(json, r'user_id'),
        vendorId: mapValueOfType<String>(json, r'vendor_id'),
        createdAt: mapDateTime(json, r'created_at', r''),
        status: ContactFormStatus.fromJson(json[r'status']) ?? ContactFormStatus.OPEN,
      );
    }
    return null;
  }

  static List<ContactFormSubmission> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactFormSubmission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactFormSubmission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactFormSubmission> mapFromJson(dynamic json) {
    final map = <String, ContactFormSubmission>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactFormSubmission.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactFormSubmission-objects as value to a dart map
  static Map<String, List<ContactFormSubmission>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactFormSubmission>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactFormSubmission.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'email',
    'subject',
    'message',
    'type',
  };
}

