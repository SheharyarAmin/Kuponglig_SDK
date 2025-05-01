//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoreReviewStats {
  /// Returns a new [StoreReviewStats] instance.
  StoreReviewStats({
    required this.storeId,
    required this.avgRating,
    required this.totalReviews,
    this.ratingDistribution = const {},
  });

  String storeId;

  num avgRating;

  int totalReviews;

  Map<String, int> ratingDistribution;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoreReviewStats &&
    other.storeId == storeId &&
    other.avgRating == avgRating &&
    other.totalReviews == totalReviews &&
    _deepEquality.equals(other.ratingDistribution, ratingDistribution);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storeId.hashCode) +
    (avgRating.hashCode) +
    (totalReviews.hashCode) +
    (ratingDistribution.hashCode);

  @override
  String toString() => 'StoreReviewStats[storeId=$storeId, avgRating=$avgRating, totalReviews=$totalReviews, ratingDistribution=$ratingDistribution]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'store_id'] = this.storeId;
      json[r'avg_rating'] = this.avgRating;
      json[r'total_reviews'] = this.totalReviews;
      json[r'rating_distribution'] = this.ratingDistribution;
    return json;
  }

  /// Returns a new [StoreReviewStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoreReviewStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoreReviewStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoreReviewStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoreReviewStats(
        storeId: mapValueOfType<String>(json, r'store_id')!,
        avgRating: num.parse('${json[r'avg_rating']}'),
        totalReviews: mapValueOfType<int>(json, r'total_reviews')!,
        ratingDistribution: mapCastOfType<String, int>(json, r'rating_distribution')!,
      );
    }
    return null;
  }

  static List<StoreReviewStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreReviewStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreReviewStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoreReviewStats> mapFromJson(dynamic json) {
    final map = <String, StoreReviewStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoreReviewStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoreReviewStats-objects as value to a dart map
  static Map<String, List<StoreReviewStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoreReviewStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoreReviewStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'store_id',
    'avg_rating',
    'total_reviews',
    'rating_distribution',
  };
}

