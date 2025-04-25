//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactFormDetail {
  /// Returns a new [ContactFormDetail] instance.
  ContactFormDetail({
    required this.id,
    required this.name,
    required this.email,
    required this.subject,
    required this.message,
    required this.type,
    this.userId,
    this.vendorId,
    required this.createdAt,
    required this.status,
  });

  String id;

  String name;

  String email;

  String subject;

  String message;

  ContactFormType type;

  String? userId;

  String? vendorId;

  DateTime createdAt;

  ContactFormStatus status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactFormDetail &&
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
    (id.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (subject.hashCode) +
    (message.hashCode) +
    (type.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (vendorId == null ? 0 : vendorId!.hashCode) +
    (createdAt.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'ContactFormDetail[id=$id, name=$name, email=$email, subject=$subject, message=$message, type=$type, userId=$userId, vendorId=$vendorId, createdAt=$createdAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
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
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ContactFormDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactFormDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactFormDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactFormDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactFormDetail(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        message: mapValueOfType<String>(json, r'message')!,
        type: ContactFormType.fromJson(json[r'type'])!,
        userId: mapValueOfType<String>(json, r'user_id'),
        vendorId: mapValueOfType<String>(json, r'vendor_id'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        status: ContactFormStatus.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<ContactFormDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactFormDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactFormDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactFormDetail> mapFromJson(dynamic json) {
    final map = <String, ContactFormDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactFormDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactFormDetail-objects as value to a dart map
  static Map<String, List<ContactFormDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactFormDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactFormDetail.listFromJson(entry.value, growable: growable,);
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
    'message',
    'type',
    'created_at',
    'status',
  };
}

