//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RedeemedCouponsApi {
  RedeemedCouponsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get User Redeemed Coupons
  ///
  /// Get the last N redeemed coupons for a user.  Args:     user_id: The ID of the user     limit: Maximum number of coupons to return (default 10)      Returns:     A list of the user's redeemed coupons with coupon and store details
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [int] limit:
  Future<Response> getUserRedeemedCouponsApiV1RedeemedCouponsUserHistoryGetWithHttpInfo(String userId, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/redeemed_coupons/user-history';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'user_id', userId));
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

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

  /// Get User Redeemed Coupons
  ///
  /// Get the last N redeemed coupons for a user.  Args:     user_id: The ID of the user     limit: Maximum number of coupons to return (default 10)      Returns:     A list of the user's redeemed coupons with coupon and store details
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [int] limit:
  Future<UserRedeemedCouponsListResponse?> getUserRedeemedCouponsApiV1RedeemedCouponsUserHistoryGet(String userId, { int? limit, }) async {
    final response = await getUserRedeemedCouponsApiV1RedeemedCouponsUserHistoryGetWithHttpInfo(userId,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserRedeemedCouponsListResponse',) as UserRedeemedCouponsListResponse;
    
    }
    return null;
  }

  /// Redeem Coupon By Code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] qrId (required):
  ///
  /// * [String] couponId (required):
  ///
  /// * [String] userId (required):
  Future<Response> redeemCouponByCodeApiV1RedeemedCouponsRedeemPostWithHttpInfo(String qrId, String couponId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/redeemed_coupons/redeem';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'qr_id', qrId));
      queryParams.addAll(_queryParams('', 'coupon_id', couponId));
      queryParams.addAll(_queryParams('', 'user_id', userId));

    const contentTypes = <String>[];


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

  /// Redeem Coupon By Code
  ///
  /// Parameters:
  ///
  /// * [String] qrId (required):
  ///
  /// * [String] couponId (required):
  ///
  /// * [String] userId (required):
  Future<CouponRedemptionResponse?> redeemCouponByCodeApiV1RedeemedCouponsRedeemPost(String qrId, String couponId, String userId,) async {
    final response = await redeemCouponByCodeApiV1RedeemedCouponsRedeemPostWithHttpInfo(qrId, couponId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CouponRedemptionResponse',) as CouponRedemptionResponse;
    
    }
    return null;
  }
}
