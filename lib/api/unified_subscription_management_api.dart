//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UnifiedSubscriptionManagementApi {
  UnifiedSubscriptionManagementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check Subscription Active
  ///
  /// Quick check if an entity has an active subscription.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     Boolean indicating if subscription is active
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityType] entityType (required):
  ///
  /// * [String] entityId (required):
  Future<Response> checkSubscriptionActiveApiV1SubscriptionCheckActiveEntityTypeEntityIdPostWithHttpInfo(EntityType entityType, String entityId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/subscription/check-active/{entity_type}/{entity_id}'
      .replaceAll('{entity_type}', entityType.toString())
      .replaceAll('{entity_id}', entityId);

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

  /// Check Subscription Active
  ///
  /// Quick check if an entity has an active subscription.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     Boolean indicating if subscription is active
  ///
  /// Parameters:
  ///
  /// * [EntityType] entityType (required):
  ///
  /// * [String] entityId (required):
  Future<Object?> checkSubscriptionActiveApiV1SubscriptionCheckActiveEntityTypeEntityIdPost(EntityType entityType, String entityId,) async {
    final response = await checkSubscriptionActiveApiV1SubscriptionCheckActiveEntityTypeEntityIdPostWithHttpInfo(entityType, entityId,);
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

  /// Create Dynamic Subscription Session
  ///
  /// Intelligently create either a checkout or customer portal session based on existing subscriptions.  This endpoint mimics how ChatGPT and other modern subscription services work: - If user has active subscription: routes to customer portal (manage billing) - If user has no active subscription: routes to checkout (start/renew subscription)  The response includes button_text stored in the subscription record and updated via webhooks.  Args:     request: DynamicSubscriptionRequest containing entity details and URLs  Returns:     DynamicSubscriptionResponse with either checkout_url or portal_url and stored button_text
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DynamicSubscriptionRequest] dynamicSubscriptionRequest (required):
  Future<Response> createDynamicSubscriptionSessionApiV1SubscriptionDynamicPostWithHttpInfo(DynamicSubscriptionRequest dynamicSubscriptionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/subscription/dynamic';

    // ignore: prefer_final_locals
    Object? postBody = dynamicSubscriptionRequest;

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

  /// Create Dynamic Subscription Session
  ///
  /// Intelligently create either a checkout or customer portal session based on existing subscriptions.  This endpoint mimics how ChatGPT and other modern subscription services work: - If user has active subscription: routes to customer portal (manage billing) - If user has no active subscription: routes to checkout (start/renew subscription)  The response includes button_text stored in the subscription record and updated via webhooks.  Args:     request: DynamicSubscriptionRequest containing entity details and URLs  Returns:     DynamicSubscriptionResponse with either checkout_url or portal_url and stored button_text
  ///
  /// Parameters:
  ///
  /// * [DynamicSubscriptionRequest] dynamicSubscriptionRequest (required):
  Future<DynamicSubscriptionResponse?> createDynamicSubscriptionSessionApiV1SubscriptionDynamicPost(DynamicSubscriptionRequest dynamicSubscriptionRequest,) async {
    final response = await createDynamicSubscriptionSessionApiV1SubscriptionDynamicPostWithHttpInfo(dynamicSubscriptionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DynamicSubscriptionResponse',) as DynamicSubscriptionResponse;
    
    }
    return null;
  }

  /// Get Current Entity Subscription Status
  ///
  /// Get subscription status for the currently authenticated entity.  Returns:     SubscriptionStatusResponse with detailed status information including stored button_text
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentEntitySubscriptionStatusApiV1SubscriptionStatusGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/subscription/status';

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

  /// Get Current Entity Subscription Status
  ///
  /// Get subscription status for the currently authenticated entity.  Returns:     SubscriptionStatusResponse with detailed status information including stored button_text
  Future<SubscriptionStatusResponse?> getCurrentEntitySubscriptionStatusApiV1SubscriptionStatusGet() async {
    final response = await getCurrentEntitySubscriptionStatusApiV1SubscriptionStatusGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionStatusResponse',) as SubscriptionStatusResponse;
    
    }
    return null;
  }

  /// Get Subscription Status
  ///
  /// Get comprehensive subscription status for any entity.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     SubscriptionStatusResponse with detailed status information including stored button_text
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityType] entityType (required):
  ///
  /// * [String] entityId (required):
  Future<Response> getSubscriptionStatusApiV1SubscriptionStatusEntityTypeEntityIdGetWithHttpInfo(EntityType entityType, String entityId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/subscription/status/{entity_type}/{entity_id}'
      .replaceAll('{entity_type}', entityType.toString())
      .replaceAll('{entity_id}', entityId);

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

  /// Get Subscription Status
  ///
  /// Get comprehensive subscription status for any entity.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     SubscriptionStatusResponse with detailed status information including stored button_text
  ///
  /// Parameters:
  ///
  /// * [EntityType] entityType (required):
  ///
  /// * [String] entityId (required):
  Future<SubscriptionStatusResponse?> getSubscriptionStatusApiV1SubscriptionStatusEntityTypeEntityIdGet(EntityType entityType, String entityId,) async {
    final response = await getSubscriptionStatusApiV1SubscriptionStatusEntityTypeEntityIdGetWithHttpInfo(entityType, entityId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubscriptionStatusResponse',) as SubscriptionStatusResponse;
    
    }
    return null;
  }

  /// Update Subscription Button Text
  ///
  /// Update the stored button text for a subscription. Useful for manual refreshes or testing.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     Updated button text
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EntityType] entityType (required):
  ///
  /// * [String] entityId (required):
  Future<Response> updateSubscriptionButtonTextApiV1SubscriptionUpdateButtonTextEntityTypeEntityIdPostWithHttpInfo(EntityType entityType, String entityId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/subscription/update-button-text/{entity_type}/{entity_id}'
      .replaceAll('{entity_type}', entityType.toString())
      .replaceAll('{entity_id}', entityId);

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

  /// Update Subscription Button Text
  ///
  /// Update the stored button text for a subscription. Useful for manual refreshes or testing.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     Updated button text
  ///
  /// Parameters:
  ///
  /// * [EntityType] entityType (required):
  ///
  /// * [String] entityId (required):
  Future<Object?> updateSubscriptionButtonTextApiV1SubscriptionUpdateButtonTextEntityTypeEntityIdPost(EntityType entityType, String entityId,) async {
    final response = await updateSubscriptionButtonTextApiV1SubscriptionUpdateButtonTextEntityTypeEntityIdPostWithHttpInfo(entityType, entityId,);
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
