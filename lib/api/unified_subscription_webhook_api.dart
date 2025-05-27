//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UnifiedSubscriptionWebhookApi {
  UnifiedSubscriptionWebhookApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Unified Subscription Webhook
  ///
  /// Unified webhook endpoint for handling all subscription-related Stripe events. Replaces the separate user and vendor webhook endpoints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] stripeSignature:
  Future<Response> unifiedSubscriptionWebhookApiV1SubscriptionWebhooksWebhookPostWithHttpInfo({ String? stripeSignature, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/subscription/webhooks/webhook';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (stripeSignature != null) {
      headerParams[r'stripe-signature'] = parameterToString(stripeSignature);
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

  /// Unified Subscription Webhook
  ///
  /// Unified webhook endpoint for handling all subscription-related Stripe events. Replaces the separate user and vendor webhook endpoints.
  ///
  /// Parameters:
  ///
  /// * [String] stripeSignature:
  Future<Object?> unifiedSubscriptionWebhookApiV1SubscriptionWebhooksWebhookPost({ String? stripeSignature, }) async {
    final response = await unifiedSubscriptionWebhookApiV1SubscriptionWebhooksWebhookPostWithHttpInfo( stripeSignature: stripeSignature, );
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

  /// Webhook Health Check
  ///
  /// Health check endpoint for the webhook.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> webhookHealthCheckApiV1SubscriptionWebhooksHealthGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/subscription/webhooks/health';

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

  /// Webhook Health Check
  ///
  /// Health check endpoint for the webhook.
  Future<Object?> webhookHealthCheckApiV1SubscriptionWebhooksHealthGet() async {
    final response = await webhookHealthCheckApiV1SubscriptionWebhooksHealthGetWithHttpInfo();
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
