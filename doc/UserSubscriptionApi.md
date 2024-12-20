# openapi.api.UserSubscriptionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost**](UserSubscriptionApi.md#createusercheckoutsessionapiv1usersubscriptioncreatecheckoutsessionpost) | **POST** /api/v1/user/subscription/create-checkout-session | Create User Checkout Session
[**getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet**](UserSubscriptionApi.md#getusersubscriptionstatusapiv1usersubscriptionstatususeridget) | **GET** /api/v1/user/subscription/status/{user_id} | Get User Subscription Status


# **createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost**
> SessionResponse createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost(createUserSubscriptionSession)

Create User Checkout Session

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserSubscriptionApi();
final createUserSubscriptionSession = CreateUserSubscriptionSession(); // CreateUserSubscriptionSession | 

try {
    final result = api_instance.createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost(createUserSubscriptionSession);
    print(result);
} catch (e) {
    print('Exception when calling UserSubscriptionApi->createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserSubscriptionSession** | [**CreateUserSubscriptionSession**](CreateUserSubscriptionSession.md)|  | 

### Return type

[**SessionResponse**](SessionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet**
> UserSubscriptionModel getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet(userId)

Get User Subscription Status

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserSubscriptionApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling UserSubscriptionApi->getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UserSubscriptionModel**](UserSubscriptionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

