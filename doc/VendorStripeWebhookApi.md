# openapi.api.VendorStripeWebhookApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vendorStripeWebhookApiV1VendorStripeWebhookPost**](VendorStripeWebhookApi.md#vendorstripewebhookapiv1vendorstripewebhookpost) | **POST** /api/v1/vendor/stripe/webhook | Vendor Stripe Webhook


# **vendorStripeWebhookApiV1VendorStripeWebhookPost**
> Object vendorStripeWebhookApiV1VendorStripeWebhookPost()

Vendor Stripe Webhook

Handles Stripe webhook events for vendor subscriptions.  Args:     request: The FastAPI request object.      Returns:     dict: Success status.      Raises:     HTTPException: If there's an error processing the webhook.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorStripeWebhookApi();

try {
    final result = api_instance.vendorStripeWebhookApiV1VendorStripeWebhookPost();
    print(result);
} catch (e) {
    print('Exception when calling VendorStripeWebhookApi->vendorStripeWebhookApiV1VendorStripeWebhookPost: $e\n');
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

