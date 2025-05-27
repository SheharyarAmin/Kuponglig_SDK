# openapi.api.UnifiedStripeWebhookApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**unifiedStripeWebhookApiV1WebhooksStripeWebhookPost**](UnifiedStripeWebhookApi.md#unifiedstripewebhookapiv1webhooksstripewebhookpost) | **POST** /api/v1/webhooks/stripe/webhook | Unified Stripe Webhook


# **unifiedStripeWebhookApiV1WebhooksStripeWebhookPost**
> Object unifiedStripeWebhookApiV1WebhooksStripeWebhookPost()

Unified Stripe Webhook

Unified webhook endpoint for all Stripe events.  This endpoint handles webhook events from Stripe and routes them to the appropriate handler based on the event type and entity type.  Args:     request: The FastAPI request object  Returns:     Dict: Status information about the event processing  Raises:     HTTPException: If there's an error processing the webhook

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnifiedStripeWebhookApi();

try {
    final result = api_instance.unifiedStripeWebhookApiV1WebhooksStripeWebhookPost();
    print(result);
} catch (e) {
    print('Exception when calling UnifiedStripeWebhookApi->unifiedStripeWebhookApiV1WebhooksStripeWebhookPost: $e\n');
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

