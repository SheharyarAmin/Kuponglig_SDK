//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeletionRequestModel {
  /// Returns a new [DeletionRequestModel] instance.
  DeletionRequestModel({
    required this.id,
    required this.userId,
    required this.requestType,
    this.status = DeletionRequestStatus.PENDING,
    this.requestDate,
    required this.scheduledDeletionDate,
    this.completedDate,
  });

  String id;

  String userId;

  DeletionRequestType requestType;

  DeletionRequestStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? requestDate;

  DateTime scheduledDeletionDate;

  DateTime? completedDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeletionRequestModel &&
    other.id == id &&
    other.userId == userId &&
    other.requestType == requestType &&
    other.status == status &&
    other.requestDate == requestDate &&
    other.scheduledDeletionDate == scheduledDeletionDate &&
    other.completedDate == completedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (requestType.hashCode) +
    (status.hashCode) +
    (requestDate == null ? 0 : requestDate!.hashCode) +
    (scheduledDeletionDate.hashCode) +
    (completedDate == null ? 0 : completedDate!.hashCode);

  @override
  String toString() => 'DeletionRequestModel[id=$id, userId=$userId, requestType=$requestType, status=$status, requestDate=$requestDate, scheduledDeletionDate=$scheduledDeletionDate, completedDate=$completedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'user_id'] = this.userId;
      json[r'request_type'] = this.requestType;
      json[r'status'] = this.status;
    if (this.requestDate != null) {
      json[r'request_date'] = this.requestDate!.toUtc().toIso8601String();
    } else {
      json[r'request_date'] = null;
    }
      json[r'scheduled_deletion_date'] = this.scheduledDeletionDate.toUtc().toIso8601String();
    if (this.completedDate != null) {
      json[r'completed_date'] = this.completedDate!.toUtc().toIso8601String();
    } else {
      json[r'completed_date'] = null;
    }
    return json;
  }

  /// Returns a new [DeletionRequestModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeletionRequestModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeletionRequestModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeletionRequestModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeletionRequestModel(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        requestType: DeletionRequestType.fromJson(json[r'request_type'])!,
        status: DeletionRequestStatus.fromJson(json[r'status']) ?? DeletionRequestStatus.PENDING,
        requestDate: mapDateTime(json, r'request_date', r''),
        scheduledDeletionDate: mapDateTime(json, r'scheduled_deletion_date', r'')!,
        completedDate: mapDateTime(json, r'completed_date', r''),
      );
    }
    return null;
  }

  static List<DeletionRequestModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeletionRequestModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeletionRequestModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeletionRequestModel> mapFromJson(dynamic json) {
    final map = <String, DeletionRequestModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeletionRequestModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeletionRequestModel-objects as value to a dart map
  static Map<String, List<DeletionRequestModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeletionRequestModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeletionRequestModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'user_id',
    'request_type',
    'scheduled_deletion_date',
  };
}

