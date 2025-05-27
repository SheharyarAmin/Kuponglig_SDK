//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UnifiedStripeWebhookApi {
  UnifiedStripeWebhookApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Unified Stripe Webhook
  ///
  /// Unified webhook endpoint for all Stripe events.  This endpoint handles webhook events from Stripe and routes them to the appropriate handler based on the event type and entity type.  Args:     request: The FastAPI request object  Returns:     Dict: Status information about the event processing  Raises:     HTTPException: If there's an error processing the webhook
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> unifiedStripeWebhookApiV1WebhooksStripeWebhookPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/webhooks/stripe/webhook';

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

  /// Unified Stripe Webhook
  ///
  /// Unified webhook endpoint for all Stripe events.  This endpoint handles webhook events from Stripe and routes them to the appropriate handler based on the event type and entity type.  Args:     request: The FastAPI request object  Returns:     Dict: Status information about the event processing  Raises:     HTTPException: If there's an error processing the webhook
  Future<Object?> unifiedStripeWebhookApiV1WebhooksStripeWebhookPost() async {
    final response = await unifiedStripeWebhookApiV1WebhooksStripeWebhookPostWithHttpInfo();
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
