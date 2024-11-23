//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CouponApi {
  CouponApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add Or Update Coupon Endpoint
  ///
  /// Endpoint to add or update a coupon in Firestore. - Takes CouponModel object as input. - Adds or updates the coupon in the Firestore database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CouponModel] couponModel (required):
  Future<Response> addOrUpdateCouponEndpointApiV1CouponPostWithHttpInfo(CouponModel couponModel,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/coupon/';

    // ignore: prefer_final_locals
    Object? postBody = couponModel;

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

  /// Add Or Update Coupon Endpoint
  ///
  /// Endpoint to add or update a coupon in Firestore. - Takes CouponModel object as input. - Adds or updates the coupon in the Firestore database.
  ///
  /// Parameters:
  ///
  /// * [CouponModel] couponModel (required):
  Future<CouponModel?> addOrUpdateCouponEndpointApiV1CouponPost(CouponModel couponModel,) async {
    final response = await addOrUpdateCouponEndpointApiV1CouponPostWithHttpInfo(couponModel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CouponModel',) as CouponModel;
    
    }
    return null;
  }

  /// Get Coupon
  ///
  /// Endpoint to fetch a coupon by its ID. - Takes coupon_id as a URL parameter. - Returns a CouponModel object for the given ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] couponId (required):
  Future<Response> getCouponApiV1CouponCouponIdGetWithHttpInfo(String couponId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/coupon/{coupon_id}'
      .replaceAll('{coupon_id}', couponId);

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

  /// Get Coupon
  ///
  /// Endpoint to fetch a coupon by its ID. - Takes coupon_id as a URL parameter. - Returns a CouponModel object for the given ID.
  ///
  /// Parameters:
  ///
  /// * [String] couponId (required):
  Future<CouponModel?> getCouponApiV1CouponCouponIdGet(String couponId,) async {
    final response = await getCouponApiV1CouponCouponIdGetWithHttpInfo(couponId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CouponModel',) as CouponModel;
    
    }
    return null;
  }

  /// Get Coupons By Store
  ///
  /// Endpoint to fetch coupons for a specific store. - Takes store_id as a URL parameter. - Returns a list of CouponModel objects for the given store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<Response> getCouponsByStoreApiV1CouponStoreStoreIdGetWithHttpInfo(String storeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/coupon/store/{store_id}'
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

  /// Get Coupons By Store
  ///
  /// Endpoint to fetch coupons for a specific store. - Takes store_id as a URL parameter. - Returns a list of CouponModel objects for the given store.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<List<CouponModel>?> getCouponsByStoreApiV1CouponStoreStoreIdGet(String storeId,) async {
    final response = await getCouponsByStoreApiV1CouponStoreStoreIdGetWithHttpInfo(storeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CouponModel>') as List)
        .cast<CouponModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Mark Coupon Expired
  ///
  /// Endpoint to mark a coupon as expired. - Takes coupon_id as a URL parameter. - Marks the coupon as expired in the Firestore database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] couponId (required):
  Future<Response> markCouponExpiredApiV1CouponExpireCouponIdPutWithHttpInfo(String couponId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/coupon/expire/{coupon_id}'
      .replaceAll('{coupon_id}', couponId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Mark Coupon Expired
  ///
  /// Endpoint to mark a coupon as expired. - Takes coupon_id as a URL parameter. - Marks the coupon as expired in the Firestore database.
  ///
  /// Parameters:
  ///
  /// * [String] couponId (required):
  Future<Object?> markCouponExpiredApiV1CouponExpireCouponIdPut(String couponId,) async {
    final response = await markCouponExpiredApiV1CouponExpireCouponIdPutWithHttpInfo(couponId,);
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
