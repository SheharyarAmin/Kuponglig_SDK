//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SavedCouponsApi {
  SavedCouponsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Saved Coupon
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] couponId (required):
  Future<Response> deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDeleteWithHttpInfo(String userId, String couponId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/saved_coupons/{user_id}/{coupon_id}'
      .replaceAll('{user_id}', userId)
      .replaceAll('{coupon_id}', couponId);

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

  /// Delete Saved Coupon
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] couponId (required):
  Future<Object?> deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDelete(String userId, String couponId,) async {
    final response = await deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDeleteWithHttpInfo(userId, couponId,);
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

  /// Get Saved Coupons
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getSavedCouponsApiV1SavedCouponsUserIdGetWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/saved_coupons/{user_id}'
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

  /// Get Saved Coupons
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<CouponModel>?> getSavedCouponsApiV1SavedCouponsUserIdGet(String userId,) async {
    final response = await getSavedCouponsApiV1SavedCouponsUserIdGetWithHttpInfo(userId,);
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

  /// Save Coupon
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SaveCouponRequest] saveCouponRequest (required):
  Future<Response> saveCouponApiV1SavedCouponsPostWithHttpInfo(SaveCouponRequest saveCouponRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/saved_coupons/';

    // ignore: prefer_final_locals
    Object? postBody = saveCouponRequest;

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

  /// Save Coupon
  ///
  /// Parameters:
  ///
  /// * [SaveCouponRequest] saveCouponRequest (required):
  Future<Object?> saveCouponApiV1SavedCouponsPost(SaveCouponRequest saveCouponRequest,) async {
    final response = await saveCouponApiV1SavedCouponsPostWithHttpInfo(saveCouponRequest,);
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
