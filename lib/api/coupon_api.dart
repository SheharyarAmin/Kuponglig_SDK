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

  /// Create Coupon
  ///
  /// Endpoint to create a new coupon. Requires an active vendor subscription.  Args:     coupon: The coupon model.     current_vendor: The authenticated vendor (dependency injects subscription check).  Returns:     CouponModel: The created coupon with subscription status information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CouponModel] couponModel (required):
  Future<Response> createCouponApiV1CouponPostWithHttpInfo(CouponModel couponModel,) async {
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

  /// Create Coupon
  ///
  /// Endpoint to create a new coupon. Requires an active vendor subscription.  Args:     coupon: The coupon model.     current_vendor: The authenticated vendor (dependency injects subscription check).  Returns:     CouponModel: The created coupon with subscription status information.
  ///
  /// Parameters:
  ///
  /// * [CouponModel] couponModel (required):
  Future<CouponModel?> createCouponApiV1CouponPost(CouponModel couponModel,) async {
    final response = await createCouponApiV1CouponPostWithHttpInfo(couponModel,);
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
  /// Endpoint to retrieve a coupon by ID. Public access (no subscription required).  Args:     coupon_id: The ID of the coupon.  Returns:     CouponModel: The coupon.
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
  /// Endpoint to retrieve a coupon by ID. Public access (no subscription required).  Args:     coupon_id: The ID of the coupon.  Returns:     CouponModel: The coupon.
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

  /// Get Coupons For Store
  ///
  /// Endpoint to retrieve coupons for a store. Entity-aware: Vendors get all coupons, Users get only visible ones.  Args:     store_id: The ID of the store.     current_entity: Optional authenticated user/vendor  Returns:     List[CouponModel]: The list of coupons based on entity access level.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<Response> getCouponsForStoreApiV1CouponStoreStoreIdGetWithHttpInfo(String storeId,) async {
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

  /// Get Coupons For Store
  ///
  /// Endpoint to retrieve coupons for a store. Entity-aware: Vendors get all coupons, Users get only visible ones.  Args:     store_id: The ID of the store.     current_entity: Optional authenticated user/vendor  Returns:     List[CouponModel]: The list of coupons based on entity access level.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<List<CouponModel>?> getCouponsForStoreApiV1CouponStoreStoreIdGet(String storeId,) async {
    final response = await getCouponsForStoreApiV1CouponStoreStoreIdGetWithHttpInfo(storeId,);
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

  /// Get Coupons For Vendor
  ///
  /// Endpoint to retrieve all coupons for a vendor. Public access (no subscription required).  Args:     vendor_id: The ID of the vendor.  Returns:     List[CouponModel]: The list of coupons.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> getCouponsForVendorApiV1CouponVendorVendorIdGetWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/coupon/vendor/{vendor_id}'
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

  /// Get Coupons For Vendor
  ///
  /// Endpoint to retrieve all coupons for a vendor. Public access (no subscription required).  Args:     vendor_id: The ID of the vendor.  Returns:     List[CouponModel]: The list of coupons.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<List<CouponModel>?> getCouponsForVendorApiV1CouponVendorVendorIdGet(String vendorId,) async {
    final response = await getCouponsForVendorApiV1CouponVendorVendorIdGetWithHttpInfo(vendorId,);
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

  /// Get Top Coupons
  ///
  /// Endpoint to fetch top coupons for a specific store. - Takes store_id as a URL parameter. - Returns a list of top CouponModel objects for the given store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<Response> getTopCouponsApiV1CouponTopCouponsStoreIdGetWithHttpInfo(String storeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/coupon/top_coupons/{store_id}'
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

  /// Get Top Coupons
  ///
  /// Endpoint to fetch top coupons for a specific store. - Takes store_id as a URL parameter. - Returns a list of top CouponModel objects for the given store.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<List<CouponModel>?> getTopCouponsApiV1CouponTopCouponsStoreIdGet(String storeId,) async {
    final response = await getTopCouponsApiV1CouponTopCouponsStoreIdGetWithHttpInfo(storeId,);
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
  /// Endpoint to mark a coupon as expired. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     token: The JWT token.  Returns:     dict: Success message.
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
  /// Endpoint to mark a coupon as expired. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     token: The JWT token.  Returns:     dict: Success message.
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

  /// Remove Coupon
  ///
  /// Endpoint to delete a coupon. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     token: The JWT token.  Returns:     dict: Success message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] couponId (required):
  Future<Response> removeCouponApiV1CouponCouponIdDeleteWithHttpInfo(String couponId,) async {
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove Coupon
  ///
  /// Endpoint to delete a coupon. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     token: The JWT token.  Returns:     dict: Success message.
  ///
  /// Parameters:
  ///
  /// * [String] couponId (required):
  Future<Object?> removeCouponApiV1CouponCouponIdDelete(String couponId,) async {
    final response = await removeCouponApiV1CouponCouponIdDeleteWithHttpInfo(couponId,);
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

  /// Update Coupon
  ///
  /// Endpoint to update a coupon. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     coupon: The updated coupon model.     token: The JWT token.  Returns:     CouponModel: The updated coupon.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] couponId (required):
  ///
  /// * [CouponModel] couponModel (required):
  Future<Response> updateCouponApiV1CouponCouponIdPutWithHttpInfo(String couponId, CouponModel couponModel,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/coupon/{coupon_id}'
      .replaceAll('{coupon_id}', couponId);

    // ignore: prefer_final_locals
    Object? postBody = couponModel;

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

  /// Update Coupon
  ///
  /// Endpoint to update a coupon. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     coupon: The updated coupon model.     token: The JWT token.  Returns:     CouponModel: The updated coupon.
  ///
  /// Parameters:
  ///
  /// * [String] couponId (required):
  ///
  /// * [CouponModel] couponModel (required):
  Future<CouponModel?> updateCouponApiV1CouponCouponIdPut(String couponId, CouponModel couponModel,) async {
    final response = await updateCouponApiV1CouponCouponIdPutWithHttpInfo(couponId, couponModel,);
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
}
