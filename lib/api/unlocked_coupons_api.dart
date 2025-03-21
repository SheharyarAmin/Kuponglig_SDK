//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UnlockedCouponsApi {
  UnlockedCouponsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get User Unlocked Coupon List
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserUnlockedCouponListApiV1UnlockCouponsUserUserIdUnlockedGetWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/unlock-coupons/user/{user_id}/unlocked'
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

  /// Get User Unlocked Coupon List
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<List<UnlockedCouponModel>?> getUserUnlockedCouponListApiV1UnlockCouponsUserUserIdUnlockedGet(String userId,) async {
    final response = await getUserUnlockedCouponListApiV1UnlockCouponsUserUserIdUnlockedGetWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UnlockedCouponModel>') as List)
        .cast<UnlockedCouponModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Unlock Premium Coupon
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] couponId (required):
  Future<Response> unlockPremiumCouponApiV1UnlockCouponsUnlockUserIdCouponIdPostWithHttpInfo(String userId, String couponId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/unlock-coupons/unlock/{user_id}/{coupon_id}'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unlock Premium Coupon
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [String] couponId (required):
  Future<UnlockedCouponResponse?> unlockPremiumCouponApiV1UnlockCouponsUnlockUserIdCouponIdPost(String userId, String couponId,) async {
    final response = await unlockPremiumCouponApiV1UnlockCouponsUnlockUserIdCouponIdPostWithHttpInfo(userId, couponId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnlockedCouponResponse',) as UnlockedCouponResponse;
    
    }
    return null;
  }
}
