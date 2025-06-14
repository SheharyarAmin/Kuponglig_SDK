//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserSubscriptionApi {
  UserSubscriptionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel User Subscription
  ///
  /// Cancels a user's subscription.  Args:     user_id: The ID of the user.     immediate: If True, cancels immediately. If False, cancels at period end.  Returns:     dict: Object containing the cancellation status.  Raises:     HTTPException: If the user has no subscription or there's an error canceling.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [bool] immediate:
  Future<Response> cancelUserSubscriptionApiV1UserSubscriptionUserIdCancelPostWithHttpInfo(String userId, { bool? immediate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/subscription/{user_id}/cancel'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (immediate != null) {
      queryParams.addAll(_queryParams('', 'immediate', immediate));
    }

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

  /// Cancel User Subscription
  ///
  /// Cancels a user's subscription.  Args:     user_id: The ID of the user.     immediate: If True, cancels immediately. If False, cancels at period end.  Returns:     dict: Object containing the cancellation status.  Raises:     HTTPException: If the user has no subscription or there's an error canceling.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [bool] immediate:
  Future<Object?> cancelUserSubscriptionApiV1UserSubscriptionUserIdCancelPost(String userId, { bool? immediate, }) async {
    final response = await cancelUserSubscriptionApiV1UserSubscriptionUserIdCancelPostWithHttpInfo(userId,  immediate: immediate, );
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

  /// Create User Checkout Session
  ///
  /// Creates a checkout session for a user subscription.  Args:     payload: The session creation payload containing user ID, email, name, price ID, and optional setup intent ID.  Returns:     SessionResponse: Object containing payment information.  Raises:     HTTPException: If there's an error processing the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateUserSubscriptionSession] createUserSubscriptionSession (required):
  Future<Response> createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPostWithHttpInfo(CreateUserSubscriptionSession createUserSubscriptionSession,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/subscription/create-checkout-session';

    // ignore: prefer_final_locals
    Object? postBody = createUserSubscriptionSession;

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

  /// Create User Checkout Session
  ///
  /// Creates a checkout session for a user subscription.  Args:     payload: The session creation payload containing user ID, email, name, price ID, and optional setup intent ID.  Returns:     SessionResponse: Object containing payment information.  Raises:     HTTPException: If there's an error processing the request.
  ///
  /// Parameters:
  ///
  /// * [CreateUserSubscriptionSession] createUserSubscriptionSession (required):
  Future<SessionResponse?> createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost(CreateUserSubscriptionSession createUserSubscriptionSession,) async {
    final response = await createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPostWithHttpInfo(createUserSubscriptionSession,);
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

  /// Get User Subscription Status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGetWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/subscription/status/{user_id}'
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

  /// Get User Subscription Status
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<UserSubscriptionModel?> getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet(String userId,) async {
    final response = await getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGetWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSubscriptionModel',) as UserSubscriptionModel;
    
    }
    return null;
  }
}
