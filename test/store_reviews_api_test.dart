//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for StoreReviewsApi
void main() {
  // final instance = StoreReviewsApi();

  group('tests for StoreReviewsApi', () {
    // Add Review
    //
    // Submit a review for a store.  Args:     review: The review data      Returns:     The created review
    //
    //Future<StoreReviewModel> addReviewApiV1StoreReviewsPost(StoreReviewCreate storeReviewCreate) async
    test('test addReviewApiV1StoreReviewsPost', () async {
      // TODO
    });

    // Delete Review
    //
    // Delete a review.  Args:     review_id: The ID of the review to delete      Returns:     Success message
    //
    //Future<Object> deleteReviewApiV1StoreReviewsReviewIdDelete(String reviewId) async
    test('test deleteReviewApiV1StoreReviewsReviewIdDelete', () async {
      // TODO
    });

    // Get Review Stats For Store
    //
    // Get review statistics for a store.  Args:     store_id: The ID of the store      Returns:     Review statistics
    //
    //Future<StoreReviewStats> getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGet(String storeId) async
    test('test getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGet', () async {
      // TODO
    });

    // Get Reviews By User
    //
    // Get all reviews by the current user.  Returns:     List of reviews by the user
    //
    //Future<List<StoreReviewModel>> getReviewsByUserApiV1StoreReviewsUserUserIdGet(String userId) async
    test('test getReviewsByUserApiV1StoreReviewsUserUserIdGet', () async {
      // TODO
    });

    // Get Reviews For Store
    //
    // Get all reviews for a store with user information.  Args:     store_id: The ID of the store      Returns:     List of reviews with user information
    //
    //Future<List<StoreReviewResponse>> getReviewsForStoreApiV1StoreReviewsStoreStoreIdGet(String storeId) async
    test('test getReviewsForStoreApiV1StoreReviewsStoreStoreIdGet', () async {
      // TODO
    });

    // Get User Review
    //
    // Get a user's review for a specific store.  Args:     store_id: The ID of the store      Returns:     The user's review if exists
    //
    //Future<StoreReviewModel> getUserReviewApiV1StoreReviewsUserStoreIdUserIdGet(String storeId, String userId) async
    test('test getUserReviewApiV1StoreReviewsUserStoreIdUserIdGet', () async {
      // TODO
    });

    // Get Vendor Store Reviews
    //
    // Get review statistics for all stores owned by a vendor.  Returns:     Dictionary mapping store IDs to review statistics
    //
    //Future<Object> getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGet(String vendorId) async
    test('test getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGet', () async {
      // TODO
    });

  });
}
