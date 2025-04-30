# openapi.api.VendorSubscriptionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet**](VendorSubscriptionApi.md#checksubscriptionstatusapiv1vendorsubscriptionvendoridstatusget) | **GET** /api/v1/vendor/subscription/{vendor_id}/status | Check Subscription Status
[**createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost**](VendorSubscriptionApi.md#createvendorcheckoutsessionapiv1vendorsubscriptioncreatecheckoutsessionpost) | **POST** /api/v1/vendor/subscription/create-checkout-session | Create Vendor Checkout Session
[**getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet**](VendorSubscriptionApi.md#getvendorsubscriptionapiv1vendorsubscriptionvendoridget) | **GET** /api/v1/vendor/subscription/{vendor_id} | Get Vendor Subscription


# **checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet**
> Object checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet(vendorId)

Check Subscription Status

Checks if a vendor has an active subscription.  Args:     vendor_id: The ID of the vendor.  Returns:     dict: Object containing the subscription status.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorSubscriptionApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling VendorSubscriptionApi->checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost**
> SessionResponse createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost(createVendorSubscriptionSession)

Create Vendor Checkout Session

Creates a checkout session for a vendor subscription.  Args:     payload: The session creation payload containing vendor ID, email, name, price ID, and optional setup intent ID.  Returns:     SessionResponse: Object containing payment information.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorSubscriptionApi();
final createVendorSubscriptionSession = CreateVendorSubscriptionSession(); // CreateVendorSubscriptionSession | 

try {
    final result = api_instance.createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost(createVendorSubscriptionSession);
    print(result);
} catch (e) {
    print('Exception when calling VendorSubscriptionApi->createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createVendorSubscriptionSession** | [**CreateVendorSubscriptionSession**](CreateVendorSubscriptionSession.md)|  | 

### Return type

[**SessionResponse**](SessionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet**
> VendorSubscriptionModel getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet(vendorId)

Get Vendor Subscription

Gets subscription details for a vendor.  Args:     vendor_id: The ID of the vendor.  Returns:     VendorSubscriptionModel: The vendor's subscription details.  Raises:     HTTPException: If no subscription is found for the vendor.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorSubscriptionApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling VendorSubscriptionApi->getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 

### Return type

[**VendorSubscriptionModel**](VendorSubscriptionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

