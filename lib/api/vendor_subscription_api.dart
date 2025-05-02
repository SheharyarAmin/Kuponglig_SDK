//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VendorSubscriptionApi {
  VendorSubscriptionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check Subscription Status
  ///
  /// Checks if a vendor has an active subscription.  Args:     vendor_id: The ID of the vendor.  Returns:     dict: Object containing the subscription status.      Raises:     HTTPException: If there's an error processing the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGetWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/subscription/{vendor_id}/status'
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

  /// Check Subscription Status
  ///
  /// Checks if a vendor has an active subscription.  Args:     vendor_id: The ID of the vendor.  Returns:     dict: Object containing the subscription status.      Raises:     HTTPException: If there's an error processing the request.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Object?> checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet(String vendorId,) async {
    final response = await checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGetWithHttpInfo(vendorId,);
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

  /// Create Subscription Portal
  ///
  /// Creates a Stripe Customer Portal session for subscription management.  Args:     vendor_id: The ID of the vendor.     return_url: The URL to redirect to after the portal session.      Returns:     CustomerPortalResponse: Object containing the portal URL.      Raises:     HTTPException: If the vendor has no subscription or there's an error creating the portal session.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///
  /// * [String] returnUrl (required):
  ///   URL to redirect to after the portal session
  Future<Response> createSubscriptionPortalApiV1VendorSubscriptionVendorIdPortalGetWithHttpInfo(String vendorId, String returnUrl,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/subscription/{vendor_id}/portal'
      .replaceAll('{vendor_id}', vendorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'return_url', returnUrl));

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

  /// Create Subscription Portal
  ///
  /// Creates a Stripe Customer Portal session for subscription management.  Args:     vendor_id: The ID of the vendor.     return_url: The URL to redirect to after the portal session.      Returns:     CustomerPortalResponse: Object containing the portal URL.      Raises:     HTTPException: If the vendor has no subscription or there's an error creating the portal session.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///
  /// * [String] returnUrl (required):
  ///   URL to redirect to after the portal session
  Future<CustomerPortalResponse?> createSubscriptionPortalApiV1VendorSubscriptionVendorIdPortalGet(String vendorId, String returnUrl,) async {
    final response = await createSubscriptionPortalApiV1VendorSubscriptionVendorIdPortalGetWithHttpInfo(vendorId, returnUrl,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomerPortalResponse',) as CustomerPortalResponse;
    
    }
    return null;
  }

  /// Create Vendor Checkout Session
  ///
  /// Creates a checkout session for a vendor subscription.  Args:     payload: The session creation payload containing vendor ID, email, name, price ID, and optional setup intent ID.  Returns:     SessionResponse: Object containing payment information.      Raises:     HTTPException: If there's an error processing the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateVendorSubscriptionSession] createVendorSubscriptionSession (required):
  Future<Response> createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPostWithHttpInfo(CreateVendorSubscriptionSession createVendorSubscriptionSession,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/subscription/create-checkout-session';

    // ignore: prefer_final_locals
    Object? postBody = createVendorSubscriptionSession;

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

  /// Create Vendor Checkout Session
  ///
  /// Creates a checkout session for a vendor subscription.  Args:     payload: The session creation payload containing vendor ID, email, name, price ID, and optional setup intent ID.  Returns:     SessionResponse: Object containing payment information.      Raises:     HTTPException: If there's an error processing the request.
  ///
  /// Parameters:
  ///
  /// * [CreateVendorSubscriptionSession] createVendorSubscriptionSession (required):
  Future<SessionResponse?> createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost(CreateVendorSubscriptionSession createVendorSubscriptionSession,) async {
    final response = await createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPostWithHttpInfo(createVendorSubscriptionSession,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionResponse',) as SessionResponse;
    
    }
    return null;
  }

  /// Get Vendor Subscription
  ///
  /// Gets subscription details for a vendor.  Args:     vendor_id: The ID of the vendor.  Returns:     VendorSubscriptionModel: The vendor's subscription details.  Raises:     HTTPException: If no subscription is found for the vendor.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> getVendorSubscriptionApiV1VendorSubscriptionVendorIdGetWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/subscription/{vendor_id}'
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

  /// Get Vendor Subscription
  ///
  /// Gets subscription details for a vendor.  Args:     vendor_id: The ID of the vendor.  Returns:     VendorSubscriptionModel: The vendor's subscription details.  Raises:     HTTPException: If no subscription is found for the vendor.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<VendorSubscriptionModel?> getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet(String vendorId,) async {
    final response = await getVendorSubscriptionApiV1VendorSubscriptionVendorIdGetWithHttpInfo(vendorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VendorSubscriptionModel',) as VendorSubscriptionModel;
    
    }
    return null;
  }
}
