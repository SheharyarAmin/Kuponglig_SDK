//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StoreReviewsApi {
  StoreReviewsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add Review
  ///
  /// Submit a review for a store.  Args:     review: The review data      Returns:     The created review
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StoreReviewCreate] storeReviewCreate (required):
  Future<Response> addReviewApiV1StoreReviewsPostWithHttpInfo(StoreReviewCreate storeReviewCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store-reviews/';

    // ignore: prefer_final_locals
    Object? postBody = storeReviewCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add Review
  ///
  /// Submit a review for a store.  Args:     review: The review data      Returns:     The created review
  ///
  /// Parameters:
  ///
  /// * [StoreReviewCreate] storeReviewCreate (required):
  Future<StoreReviewModel?> addReviewApiV1StoreReviewsPost(StoreReviewCreate storeReviewCreate,) async {
    final response = await addReviewApiV1StoreReviewsPostWithHttpInfo(storeReviewCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StoreReviewModel',) as StoreReviewModel;
    
    }
    return null;
  }

  /// Delete Review
  ///
  /// Delete a review.  Args:     review_id: The ID of the review to delete      Returns:     Success message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] reviewId (required):
  Future<Response> deleteReviewApiV1StoreReviewsReviewIdDeleteWithHttpInfo(String reviewId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store-reviews/{review_id}'
      .replaceAll('{review_id}', reviewId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Review
  ///
  /// Delete a review.  Args:     review_id: The ID of the review to delete      Returns:     Success message
  ///
  /// Parameters:
  ///
  /// * [String] reviewId (required):
  Future<Object?> deleteReviewApiV1StoreReviewsReviewIdDelete(String reviewId,) async {
    final response = await deleteReviewApiV1StoreReviewsReviewIdDeleteWithHttpInfo(reviewId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get Review Stats For Store
  ///
  /// Get review statistics for a store.  Args:     store_id: The ID of the store      Returns:     Review statistics
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<Response> getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGetWithHttpInfo(String storeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store-reviews/store/{store_id}/stats'
      .replaceAll('{store_id}', storeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Review Stats For Store
  ///
  /// Get review statistics for a store.  Args:     store_id: The ID of the store      Returns:     Review statistics
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<StoreReviewStats?> getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGet(String storeId,) async {
    final response = await getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGetWithHttpInfo(storeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StoreReviewStats',) as StoreReviewStats;
    
    }
    return null;
  }

  /// Get Reviews By User
  ///
  /// Get all reviews by the current user.  Returns:     List of reviews by the user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getReviewsByUserApiV1StoreReviewsUserUserIdGetWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store-reviews/user/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Reviews By User
  ///
  /// Get all reviews by the current user.  Returns:     List of reviews by the user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<StoreReviewModel>?> getReviewsByUserApiV1StoreReviewsUserUserIdGet(String userId,) async {
    final response = await getReviewsByUserApiV1StoreReviewsUserUserIdGetWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StoreReviewModel>') as List)
        .cast<StoreReviewModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Reviews For Store
  ///
  /// Get all reviews for a store with user information.  Args:     store_id: The ID of the store      Returns:     List of reviews with user information
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<Response> getReviewsForStoreApiV1StoreReviewsStoreStoreIdGetWithHttpInfo(String storeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store-reviews/store/{store_id}'
      .replaceAll('{store_id}', storeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Reviews For Store
  ///
  /// Get all reviews for a store with user information.  Args:     store_id: The ID of the store      Returns:     List of reviews with user information
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<List<StoreReviewResponse>?> getReviewsForStoreApiV1StoreReviewsStoreStoreIdGet(String storeId,) async {
    final response = await getReviewsForStoreApiV1StoreReviewsStoreStoreIdGetWithHttpInfo(storeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StoreReviewResponse>') as List)
        .cast<StoreReviewResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get User Review
  ///
  /// Get a user's review for a specific store.  Args:     store_id: The ID of the store      Returns:     The user's review if exists
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///
  /// * [String] userId (required):
  Future<Response> getUserReviewApiV1StoreReviewsUserStoreIdUserIdGetWithHttpInfo(String storeId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store-reviews/user/{store_id}/{user_id}'
      .replaceAll('{store_id}', storeId)
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get User Review
  ///
  /// Get a user's review for a specific store.  Args:     store_id: The ID of the store      Returns:     The user's review if exists
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///
  /// * [String] userId (required):
  Future<StoreReviewModel?> getUserReviewApiV1StoreReviewsUserStoreIdUserIdGet(String storeId, String userId,) async {
    final response = await getUserReviewApiV1StoreReviewsUserStoreIdUserIdGetWithHttpInfo(storeId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StoreReviewModel',) as StoreReviewModel;
    
    }
    return null;
  }

  /// Get Vendor Store Reviews
  ///
  /// Get review statistics for all stores owned by a vendor.  Returns:     Dictionary mapping store IDs to review statistics
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGetWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store-reviews/vendor/stores/{vendor_id}'
      .replaceAll('{vendor_id}', vendorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Vendor Store Reviews
  ///
  /// Get review statistics for all stores owned by a vendor.  Returns:     Dictionary mapping store IDs to review statistics
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Object?> getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGet(String vendorId,) async {
    final response = await getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGetWithHttpInfo(vendorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
