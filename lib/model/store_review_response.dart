//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoreReviewResponse {
  /// Returns a new [StoreReviewResponse] instance.
  StoreReviewResponse({
    required this.storeId,
    required this.userId,
    required this.rating,
    this.reviewText,
    required this.id,
    required this.createdAt,
    this.updatedAt,
    required this.userName,
  });

  String storeId;

  String userId;

  RatingValue rating;

  String? reviewText;

  String id;

  DateTime createdAt;

  DateTime? updatedAt;

  String userName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoreReviewResponse &&
    other.storeId == storeId &&
    other.userId == userId &&
    other.rating == rating &&
    other.reviewText == reviewText &&
    other.id == id &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.userName == userName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storeId.hashCode) +
    (userId.hashCode) +
    (rating.hashCode) +
    (reviewText == null ? 0 : reviewText!.hashCode) +
    (id.hashCode) +
    (createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (userName.hashCode);

  @override
  String toString() => 'StoreReviewResponse[storeId=$storeId, userId=$userId, rating=$rating, reviewText=$reviewText, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, userName=$userName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'store_id'] = this.storeId;
      json[r'user_id'] = this.userId;
      json[r'rating'] = this.rating;
    if (this.reviewText != null) {
      json[r'review_text'] = this.reviewText;
    } else {
      json[r'review_text'] = null;
    }
      json[r'id'] = this.id;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
      json[r'user_name'] = this.userName;
    return json;
  }

  /// Returns a new [StoreReviewResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoreReviewResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoreReviewResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoreReviewResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoreReviewResponse(
        storeId: mapValueOfType<String>(json, r'store_id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        rating: RatingValue.fromJson(json[r'rating'])!,
        reviewText: mapValueOfType<String>(json, r'review_text'),
        id: mapValueOfType<String>(json, r'id')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r''),
        userName: mapValueOfType<String>(json, r'user_name')!,
      );
    }
    return null;
  }

  static List<StoreReviewResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreReviewResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreReviewResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoreReviewResponse> mapFromJson(dynamic json) {
    final map = <String, StoreReviewResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoreReviewResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoreReviewResponse-objects as value to a dart map
  static Map<String, List<StoreReviewResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoreReviewResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoreReviewResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'store_id',
    'user_id',
    'rating',
    'id',
    'created_at',
    'user_name',
  };
}

