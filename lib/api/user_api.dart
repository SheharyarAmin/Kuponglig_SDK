//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create User
  ///
  /// Endpoint to create a new user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserModelFromClient] userModelFromClient (required):
  Future<Response> createUserApiV1UserPostWithHttpInfo(UserModelFromClient userModelFromClient,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/';

    // ignore: prefer_final_locals
    Object? postBody = userModelFromClient;

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

  /// Create User
  ///
  /// Endpoint to create a new user.
  ///
  /// Parameters:
  ///
  /// * [UserModelFromClient] userModelFromClient (required):
  Future<UserModelFromClient?> createUserApiV1UserPost(UserModelFromClient userModelFromClient,) async {
    final response = await createUserApiV1UserPostWithHttpInfo(userModelFromClient,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserModelFromClient',) as UserModelFromClient;
    
    }
    return null;
  }

  /// Delete User Endpoint
  ///
  /// Endpoint to delete a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> deleteUserEndpointApiV1UserUserIdDeleteWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{user_id}'
      .replaceAll('{user_id}', userId);

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

  /// Delete User Endpoint
  ///
  /// Endpoint to delete a user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Object?> deleteUserEndpointApiV1UserUserIdDelete(String userId,) async {
    final response = await deleteUserEndpointApiV1UserUserIdDeleteWithHttpInfo(userId,);
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

  /// Get All Users
  ///
  /// Endpoint to fetch all users.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllUsersApiV1UserGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/';

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

  /// Get All Users
  ///
  /// Endpoint to fetch all users.
  Future<List<UserModel>?> getAllUsersApiV1UserGet() async {
    final response = await getAllUsersApiV1UserGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserModel>') as List)
        .cast<UserModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get User
  ///
  /// Endpoint to fetch a user by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserApiV1UserUserIdGetWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{user_id}'
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

  /// Get User
  ///
  /// Endpoint to fetch a user by ID.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserModel?> getUserApiV1UserUserIdGet(String userId,) async {
    final response = await getUserApiV1UserUserIdGetWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserModel',) as UserModel;
    
    }
    return null;
  }

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

  /// Redeem Coupon By Code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] qrId (required):
  ///
  /// * [String] couponId (required):
  Future<Response> redeemCouponByCodeApiV1UserRedeemCouponPostWithHttpInfo(String qrId, String couponId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/redeem-coupon';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'qr_id', qrId));
      queryParams.addAll(_queryParams('', 'coupon_id', couponId));

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
  Future<Object?> redeemCouponByCodeApiV1UserRedeemCouponPost(String qrId, String couponId,) async {
    final response = await redeemCouponByCodeApiV1UserRedeemCouponPostWithHttpInfo(qrId, couponId,);
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

  /// Redeem Coupon By Code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] qrId (required):
  ///
  /// * [String] couponId (required):
  Future<Response> redeemCouponByCodeApiV1UserRedeemCouponPost_1WithHttpInfo(String qrId, String couponId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/redeem-coupon';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'qr_id', qrId));
      queryParams.addAll(_queryParams('', 'coupon_id', couponId));

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
  Future<Object?> redeemCouponByCodeApiV1UserRedeemCouponPost_1(String qrId, String couponId,) async {
    final response = await redeemCouponByCodeApiV1UserRedeemCouponPost_1WithHttpInfo(qrId, couponId,);
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

  /// Update User
  ///
  /// Endpoint to update user data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UserModel] userModel (required):
  Future<Response> updateUserApiV1UserUserIdPutWithHttpInfo(String userId, UserModel userModel,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody = userModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Update User
  ///
  /// Endpoint to update user data.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [UserModel] userModel (required):
  Future<UserModel?> updateUserApiV1UserUserIdPut(String userId, UserModel userModel,) async {
    final response = await updateUserApiV1UserUserIdPutWithHttpInfo(userId, userModel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserModel',) as UserModel;
    
    }
    return null;
  }
}
