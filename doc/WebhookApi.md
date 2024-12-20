# openapi.api.WebhookApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stripeWebhookApiV1StripeWebhookPost**](WebhookApi.md#stripewebhookapiv1stripewebhookpost) | **POST** /api/v1/stripe/webhook | Stripe Webhook


# **stripeWebhookApiV1StripeWebhookPost**
> Object stripeWebhookApiV1StripeWebhookPost()

Stripe Webhook

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = WebhookApi();

try {
    final result = api_instance.stripeWebhookApiV1StripeWebhookPost();
    print(result);
} catch (e) {
    print('Exception when calling WebhookApi->stripeWebhookApiV1StripeWebhookPost: $e\n');
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

