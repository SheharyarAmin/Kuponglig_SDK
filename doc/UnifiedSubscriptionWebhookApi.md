# openapi.api.UnifiedSubscriptionWebhookApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**unifiedSubscriptionWebhookApiV1SubscriptionWebhooksWebhookPost**](UnifiedSubscriptionWebhookApi.md#unifiedsubscriptionwebhookapiv1subscriptionwebhookswebhookpost) | **POST** /api/v1/subscription/webhooks/webhook | Unified Subscription Webhook
[**webhookHealthCheckApiV1SubscriptionWebhooksHealthGet**](UnifiedSubscriptionWebhookApi.md#webhookhealthcheckapiv1subscriptionwebhookshealthget) | **GET** /api/v1/subscription/webhooks/health | Webhook Health Check


# **unifiedSubscriptionWebhookApiV1SubscriptionWebhooksWebhookPost**
> Object unifiedSubscriptionWebhookApiV1SubscriptionWebhooksWebhookPost(stripeSignature)

Unified Subscription Webhook

Unified webhook endpoint for handling all subscription-related Stripe events. Replaces the separate user and vendor webhook endpoints.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnifiedSubscriptionWebhookApi();
final stripeSignature = stripeSignature_example; // String | 

try {
    final result = api_instance.unifiedSubscriptionWebhookApiV1SubscriptionWebhooksWebhookPost(stripeSignature);
    print(result);
} catch (e) {
    print('Exception when calling UnifiedSubscriptionWebhookApi->unifiedSubscriptionWebhookApiV1SubscriptionWebhooksWebhookPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stripeSignature** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhookHealthCheckApiV1SubscriptionWebhooksHealthGet**
> Object webhookHealthCheckApiV1SubscriptionWebhooksHealthGet()

Webhook Health Check

Health check endpoint for the webhook.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnifiedSubscriptionWebhookApi();

try {
    final result = api_instance.webhookHealthCheckApiV1SubscriptionWebhooksHealthGet();
    print(result);
} catch (e) {
    print('Exception when calling UnifiedSubscriptionWebhookApi->webhookHealthCheckApiV1SubscriptionWebhooksHealthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

