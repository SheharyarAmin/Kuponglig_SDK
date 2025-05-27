# openapi.api.VendorSubscriptionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelVendorSubscriptionApiV1VendorSubscriptionVendorIdCancelGet**](VendorSubscriptionApi.md#cancelvendorsubscriptionapiv1vendorsubscriptionvendoridcancelget) | **GET** /api/v1/vendor/subscription/{vendor_id}/cancel | Cancel Vendor Subscription
[**checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet**](VendorSubscriptionApi.md#checksubscriptionstatusapiv1vendorsubscriptionvendoridstatusget) | **GET** /api/v1/vendor/subscription/{vendor_id}/status | Check Subscription Status
[**createCustomerPortalSessionApiV1VendorSubscriptionCustomerPortalPost**](VendorSubscriptionApi.md#createcustomerportalsessionapiv1vendorsubscriptioncustomerportalpost) | **POST** /api/v1/vendor/subscription/customer-portal | Create Customer Portal Session
[**createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost**](VendorSubscriptionApi.md#createvendorcheckoutsessionapiv1vendorsubscriptioncreatecheckoutsessionpost) | **POST** /api/v1/vendor/subscription/create-checkout-session | Create Vendor Checkout Session
[**createVendorCheckoutUrlApiV1VendorSubscriptionCreateCheckoutUrlPost**](VendorSubscriptionApi.md#createvendorcheckouturlapiv1vendorsubscriptioncreatecheckouturlpost) | **POST** /api/v1/vendor/subscription/create-checkout-url | Create Vendor Checkout Url
[**getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet**](VendorSubscriptionApi.md#getvendorsubscriptionapiv1vendorsubscriptionvendoridget) | **GET** /api/v1/vendor/subscription/{vendor_id} | Get Vendor Subscription


# **cancelVendorSubscriptionApiV1VendorSubscriptionVendorIdCancelGet**
> CancelSubscriptionResponse cancelVendorSubscriptionApiV1VendorSubscriptionVendorIdCancelGet(vendorId, immediate)

Cancel Vendor Subscription

Cancels a vendor's subscription.  Args:     vendor_id: The ID of the vendor.     immediate: If True, cancels immediately. If False, cancels at period end.  Returns:     dict: Object containing the cancellation status.  Raises:     HTTPException: If the vendor has no subscription or there's an error canceling.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorSubscriptionApi();
final vendorId = vendorId_example; // String | 
final immediate = true; // bool | 

try {
    final result = api_instance.cancelVendorSubscriptionApiV1VendorSubscriptionVendorIdCancelGet(vendorId, immediate);
    print(result);
} catch (e) {
    print('Exception when calling VendorSubscriptionApi->cancelVendorSubscriptionApiV1VendorSubscriptionVendorIdCancelGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 
 **immediate** | **bool**|  | [optional] [default to false]

### Return type

[**CancelSubscriptionResponse**](CancelSubscriptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet**
> Object checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet(vendorId)

Check Subscription Status

Checks if a vendor has an active subscription.  Args:     vendor_id: The ID of the vendor.  Returns:     dict: Object containing the subscription status.  Raises:     HTTPException: If there's an error processing the request.

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

# **createCustomerPortalSessionApiV1VendorSubscriptionCustomerPortalPost**
> CustomerPortalResponse createCustomerPortalSessionApiV1VendorSubscriptionCustomerPortalPost(customerPortalRequest)

Create Customer Portal Session

Creates a customer portal session for managing vendor subscriptions.  Args:     payload: The request payload containing vendor ID and optional return URL.  Returns:     CustomerPortalResponse: Object containing the portal URL.  Raises:     HTTPException: If there's an error processing the request or vendor has no subscription.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorSubscriptionApi();
final customerPortalRequest = CustomerPortalRequest(); // CustomerPortalRequest | 

try {
    final result = api_instance.createCustomerPortalSessionApiV1VendorSubscriptionCustomerPortalPost(customerPortalRequest);
    print(result);
} catch (e) {
    print('Exception when calling VendorSubscriptionApi->createCustomerPortalSessionApiV1VendorSubscriptionCustomerPortalPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerPortalRequest** | [**CustomerPortalRequest**](CustomerPortalRequest.md)|  | 

### Return type

[**CustomerPortalResponse**](CustomerPortalResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost**
> SessionResponse createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost(createVendorSubscriptionSession)

Create Vendor Checkout Session

Creates a checkout session for a vendor subscription. Also handles resumption of cancelled subscriptions.  Args:     payload: The session creation payload containing vendor ID, email, name, price ID, and optional setup intent ID.  Returns:     SessionResponse: Object containing payment information.  Raises:     HTTPException: If there's an error processing the request.

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

# **createVendorCheckoutUrlApiV1VendorSubscriptionCreateCheckoutUrlPost**
> CheckoutUrlResponse createVendorCheckoutUrlApiV1VendorSubscriptionCreateCheckoutUrlPost(checkoutUrlRequest)

Create Vendor Checkout Url

Creates a checkout URL for a vendor subscription with success and cancel URLs. Handles cases where vendor subscription is not found in the database.  Args:     payload: The request payload containing vendor ID, email, success URL, cancel URL, and optional price ID.  Returns:     CheckoutUrlResponse: Object containing the checkout URL.  Raises:     HTTPException: If there's an error processing the request.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorSubscriptionApi();
final checkoutUrlRequest = CheckoutUrlRequest(); // CheckoutUrlRequest | 

try {
    final result = api_instance.createVendorCheckoutUrlApiV1VendorSubscriptionCreateCheckoutUrlPost(checkoutUrlRequest);
    print(result);
} catch (e) {
    print('Exception when calling VendorSubscriptionApi->createVendorCheckoutUrlApiV1VendorSubscriptionCreateCheckoutUrlPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkoutUrlRequest** | [**CheckoutUrlRequest**](CheckoutUrlRequest.md)|  | 

### Return type

[**CheckoutUrlResponse**](CheckoutUrlResponse.md)

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

